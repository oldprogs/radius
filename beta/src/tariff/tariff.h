#ifndef TARIFF
#define TARIFF

#include <stdio.h>
#include <time.h>

using namespace std;

// Класс NODE для работы с фидошными 4d-адресами, их хранения,
// обработки, сортировки и прочего

class NODE
{
	friend class LOGDATA;

public:
// Конструктор
	NODE (const char *const node, const char *const title = NULL);
// Конструктор копий
	NODE (const NODE &Node);
// Деструктор
	virtual ~NODE (void);

// Собственно функциональные методы
	int CompareWith (const NODE &Node) const;
 	void DebugPrint (void) const;

private:
// Оператор присваивания
	NODE& operator= (const NODE &Node);

 	void SetNode (const char *const node);
	const char* PartCopy (unsigned *const destPtr, char *source,
								 const char *to, const char token);
// Данные
	char *nodeString;
	unsigned zonePart, regionPart, nodePart, pointPart;
	struct {
		unsigned in; unsigned out; unsigned all;
	} sessions;
	struct {
		float in; float out;
	} traffic;
	struct {
		long in; long out; long all;
	} time;
};


// Класс TIME для работы с временными интервалами

class TIME
{
	friend class LOGDATA;

public:
// Конструктор
	TIME (const char *const period, const long nowday_secs);
// Деструктор
	virtual ~TIME (void);

// Собственно функциональные методы
 	void DebugPrint (void) const;

private:
// Конструктор копий
	TIME (const TIME &)	{}
// Оператор присваивания
	TIME& operator= (const TIME &Node);

	unsigned ConvertDay (const char *const day);
	
	char *periodString;
	long lowLimit, upLimit;
};


// Класс OPTIONS, предназначенный для обработки и хранения
// параметров командной строки (т.е. настроек)

class OPTIONS
{
	friend class LOGDATA;

public:
// Все эти конструкторы нужны для безопасности
// Конструктор
	OPTIONS (const int ARGC, const char *const ARGV[]);
// Деструктор
	virtual ~OPTIONS (void);

// Собственно функциональные методы
	int Error (void) const
		{	return error;	}
	
private:
// Конструктор копий
	OPTIONS (const OPTIONS &)	{}
// Оператор присваивания
	OPTIONS& operator= (const OPTIONS &)	{}
	void AssignOptions (const char *const option, 
							const char *const value);
	bool CheckNodes (const char *const node);
	bool CheckPeriods (const char *const period);
	void ClearNodes (void);
	void ClearPeriods (void);
	void PrintHelp (void);
	void PrintError (void);

// Данные
	long time_beg;
	char *radius_log_file, *output_file;
	float cost_factor;
	NODE **Node;
	TIME **Time;
// Счетчики количества нод и временных интервалов,
// необходимы для правильного распределения памяти
	unsigned periods_number, nodes_number;
// Флаги обработки лога
	bool process_all_log, process_all_nodes, process_none_nodes;
	long nowday_secs;
	int isDst;
	
	int error;
};


// Класс обработки и хранения данных из логфайла

class LOGDATA
{
public:
// Все эти конструкторы нужны для безопасности
// Конструктор
	LOGDATA (class OPTIONS *Options);
// Деструктор
	virtual ~LOGDATA (void);

// Собственно функциональные методы
	void ReadLog (void);
	void OutPut (void);
	int Error (void) const
		{	return error;	}
	
private:
// Конструктор копий
	LOGDATA (const LOGDATA &)	{}
// Оператор присваивания
	LOGDATA& operator= (const LOGDATA &)	{}

	bool CheckTimePeriod (const char *const timeStr);
	long DateToSecs (const char *const timeStr);
	void ClearNodes (void);
// Вспомогательные функции вывода
	void PrintString (const char *const str,
			const unsigned max, const int align, const bool CR = false);
	void PrintString (const int number,
							const unsigned max, const int align);
	void PrintString (const float number,
			const unsigned max, const int align, const bool precise = false);
	void PrintString (const long number,
							const unsigned max, const int align);
	void CyclePrint (const int scenario, const int i);
	void CarriageReturn (unsigned n);
	
	class OPTIONS *OPTIONS;
	FILE *RADIUS_LOG_FILE, *OUTPUT_FILE;
	NODE **Node;
	unsigned nodes_number;
	float cost_IP, cost_dial, cost_all;
//	const char *radius_log_file, *output_file;
	char *firstDate, *lastDate;
	enum {DIRECTION, TRANSPORT, ADDRESS, ORIGIN, START_TIME, STOP_TIME,
 			MB_TRANSMITTED, MB_RECEIVED, COST, ELEMENTS};
	int error;
};


// Класс ARRAY для работы с массивами и строками

class ARRAY
{
public:
// Конструктор
	ARRAY (void)	{}
// Деструктор
	virtual ~ARRAY (void)	{}

	char* StrPart (const char *const srcBeg, 
 						const char *const srcEnd);
	char* StrDupl (const char *const srcBeg, 
						const unsigned count, char *const srcDest);
	char* StrCopy (const char *const srcString);
	char* StrDisjoint (const char **const srcBegPtr,
 						const char *const srcEnd, const char token,
        				char *const srcDest = NULL, const unsigned count = 0);
	void StrDelete (char **str);
	
	template <class TYPE>
	TYPE** ArrayPush (TYPE **ArrPtr, TYPE *const Element, 
 							const unsigned old_num, int pos = -1);
	template <class TYPE>
	void ArrayClear (TYPE **ArrPtr, const unsigned elements_num);

private:
// Конструктор копий
	ARRAY (const ARRAY &)	{}
};

extern ARRAY Array;



// Функция добавления элемента в произвольную позицию массива 
// произвольного типа. Формат вызова:
// ArrayPtrPtr = Array.ArrayPush<Type> (ArrayPtrPtr, NewElementPtr, OldElementsNumber);
// Следить извне за количеством элементов и за освобождением памяти!!!
// Array.ArrayClear<Type> (ArrayPtrPtr, ElementsNumber);

template <class TYPE>
TYPE** ARRAY::ArrayPush (TYPE **ArrPtr, TYPE *const Element,
						const unsigned old_num, int pos)
{
	TYPE **Buf;
	int i;
	
	Buf = new TYPE*[old_num + 1];
// По умолчанию добавляем элемент в конец массива
	if (pos < 0)
 		pos = old_num;	
	for (i = 0; i < pos; i++)
		Buf[i] = ArrPtr[i];
	Buf[pos] = Element;
//	Buf[pos]->DebugPrint();

	for (i = pos + 1; i <= old_num; i++)
		Buf[i] = ArrPtr[i - 1];
	if (ArrPtr)
		delete [] ArrPtr;

	return Buf;
}

// Функция для очистки памяти, использованной под массив
// произвольного типа

template <class TYPE>
void ARRAY::ArrayClear (TYPE **ArrPtr, const unsigned elements_num)
{
	for (int i = 0; i < elements_num; i++)	{
		delete ArrPtr[i];
		ArrPtr[i] = NULL;
	}
	if (ArrPtr)	{
		delete [] ArrPtr;
		ArrPtr = NULL;
	}
}



#endif
