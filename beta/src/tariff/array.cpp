#include <string.h>

#include "tariff.h"

using namespace std;


// Функция копирования части исходной строки. Формат вызова:
// string = Array.StrPart (srcBegPtr, srcEndPtr);
// delete [] string;
// Не забывать освобождать память!!!

char* ARRAY::StrPart (const char *const srcBeg, const char *const srcEnd)
{
	const unsigned count = srcEnd - srcBeg;
	char *buffer = new char[count + 1];
	
	return StrDupl (srcBeg, count, buffer);
}


char* ARRAY::StrDupl (const char *const srcBeg, 
							const unsigned count, char *const srcDest)
{
	strncpy (srcDest, srcBeg, count);
	srcDest[count] = '\0';
	
	return srcDest;
}


// Функция, создающая дубликат исходной строки. Формат вызова:
// string = Array.StrCopy (srcString);
// delete [] string;
// Не забывать освобождать память!!!

char* ARRAY::StrCopy (const char *const srcString)
{
	char *buffer;
	
	buffer = new char[strlen (srcString) + 1];
	strcpy (buffer, srcString);
	
	return buffer;
}


// Функция для отрезания части строки от начала до указанного символа:
// subStr = Array.StrDisjoint (srcBegPtrPtr, srcEnd, token)
// delete [] subStr;
// Не забывать освобождать память!!!

char* ARRAY::StrDisjoint (const char **const srcBegPtr, 
							const char *const srcEnd, const char token,
						 	char *const srcDest, unsigned count)
{
	const char *sep;
	char *buffer;
	
	if (*srcBegPtr >= srcEnd)
		return NULL;
	if (!(sep = strchr (*srcBegPtr, token)))
		sep = srcEnd;
	if (srcDest)	{
		if (count < sep - *srcBegPtr)
			return NULL;
		buffer = StrDupl (*srcBegPtr, sep - *srcBegPtr, srcDest);
	}
	else
		buffer = StrPart (*srcBegPtr, sep);
	*srcBegPtr = sep + 1;
	
	return buffer;
}


// Функция освобождения памяти под строку

void ARRAY::StrDelete (char **str)
{
	if (*str)	{
		delete [] *str;
		*str = NULL;
	}
}




