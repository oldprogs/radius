#ifndef TARIFF
#define TARIFF

#include <stdio.h>
#include <time.h>

using namespace std;

// ����� NODE ��� ������ � ��������� 4d-��������, �� ��������,
// ���������, ���������� � �������

class NODE
{
	friend class LOGDATA;

public:
// �����������
	NODE (const char *const node, const char *const title = NULL);
// ����������� �����
	NODE (const NODE &Node);
// ����������
	virtual ~NODE (void);

// ���������� �������������� ������
	int CompareWith (const NODE &Node) const;
 	void DebugPrint (void) const;

private:
// �������� ������������
	NODE& operator= (const NODE &Node);

 	void SetNode (const char *const node);
	const char* PartCopy (unsigned *const destPtr, char *source,
								 const char *to, const char token);
// ������
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


// ����� TIME ��� ������ � ���������� �����������

class TIME
{
	friend class LOGDATA;

public:
// �����������
	TIME (const char *const period, const long nowday_secs);
// ����������
	virtual ~TIME (void);

// ���������� �������������� ������
 	void DebugPrint (void) const;

private:
// ����������� �����
	TIME (const TIME &)	{}
// �������� ������������
	TIME& operator= (const TIME &Node);

	unsigned ConvertDay (const char *const day);
	
	char *periodString;
	long lowLimit, upLimit;
};


// ����� OPTIONS, ��������������� ��� ��������� � ��������
// ���������� ��������� ������ (�.�. ��������)

class OPTIONS
{
	friend class LOGDATA;

public:
// ��� ��� ������������ ����� ��� ������������
// �����������
	OPTIONS (const int ARGC, const char *const ARGV[]);
// ����������
	virtual ~OPTIONS (void);

// ���������� �������������� ������
	int Error (void) const
		{	return error;	}
	
private:
// ����������� �����
	OPTIONS (const OPTIONS &)	{}
// �������� ������������
	OPTIONS& operator= (const OPTIONS &)	{}
	void AssignOptions (const char *const option, 
							const char *const value);
	bool CheckNodes (const char *const node);
	bool CheckPeriods (const char *const period);
	void ClearNodes (void);
	void ClearPeriods (void);
	void PrintHelp (void);
	void PrintError (void);

// ������
	long time_beg;
	char *radius_log_file, *output_file;
	float cost_factor;
	NODE **Node;
	TIME **Time;
// �������� ���������� ��� � ��������� ����������,
// ���������� ��� ����������� ������������� ������
	unsigned periods_number, nodes_number;
// ����� ��������� ����
	bool process_all_log, process_all_nodes, process_none_nodes;
	long nowday_secs;
	int isDst;
	
	int error;
};


// ����� ��������� � �������� ������ �� ��������

class LOGDATA
{
public:
// ��� ��� ������������ ����� ��� ������������
// �����������
	LOGDATA (class OPTIONS *Options);
// ����������
	virtual ~LOGDATA (void);

// ���������� �������������� ������
	void ReadLog (void);
	void OutPut (void);
	int Error (void) const
		{	return error;	}
	
private:
// ����������� �����
	LOGDATA (const LOGDATA &)	{}
// �������� ������������
	LOGDATA& operator= (const LOGDATA &)	{}

	bool CheckTimePeriod (const char *const timeStr);
	long DateToSecs (const char *const timeStr);
	void ClearNodes (void);
// ��������������� ������� ������
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


// ����� ARRAY ��� ������ � ��������� � ��������

class ARRAY
{
public:
// �����������
	ARRAY (void)	{}
// ����������
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
// ����������� �����
	ARRAY (const ARRAY &)	{}
};

extern ARRAY Array;



// ������� ���������� �������� � ������������ ������� ������� 
// ������������� ����. ������ ������:
// ArrayPtrPtr = Array.ArrayPush<Type> (ArrayPtrPtr, NewElementPtr, OldElementsNumber);
// ������� ����� �� ����������� ��������� � �� ������������� ������!!!
// Array.ArrayClear<Type> (ArrayPtrPtr, ElementsNumber);

template <class TYPE>
TYPE** ARRAY::ArrayPush (TYPE **ArrPtr, TYPE *const Element,
						const unsigned old_num, int pos)
{
	TYPE **Buf;
	int i;
	
	Buf = new TYPE*[old_num + 1];
// �� ��������� ��������� ������� � ����� �������
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

// ������� ��� ������� ������, �������������� ��� ������
// ������������� ����

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
