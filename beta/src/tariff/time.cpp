#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "tariff.h"

using namespace std;


TIME::TIME (const char *const period, const long nowday_secs)
{
	const char *beg, *end, *buffer;
	struct TIME_ELEMENT	{
		unsigned days, hour, min;
	} TimeElement;

	periodString = NULL;
	periodString = Array.StrCopy (period);
	beg = period;
	end = period + strlen (period);
	
// ѕерва€ (нижн€€) граница
	buffer = Array.StrDisjoint (&beg, end, '.');
	TimeElement.days = ConvertDay (buffer);
	delete [] buffer;
	buffer = Array.StrDisjoint (&beg, end, ':');
	TimeElement.hour = (unsigned) atoi (buffer);
	delete [] buffer;
	buffer = Array.StrDisjoint (&beg, end, '-');
	TimeElement.min = (unsigned) atoi (buffer);
	delete [] buffer;
	lowLimit = nowday_secs +
	((-TimeElement.days*24 + TimeElement.hour)*60 + TimeElement.min)*60;

// ¬тора€ (верхн€€) граница
	buffer = Array.StrDisjoint (&beg, end, '.');
	TimeElement.days = ConvertDay (buffer);
	delete [] buffer;
	buffer = Array.StrDisjoint (&beg, end, ':');
	TimeElement.hour = (unsigned) atoi (buffer);
	delete [] buffer;
	buffer = Array.StrDisjoint (&beg, end, 0);
	TimeElement.min = (unsigned) atoi (buffer);
	delete [] buffer;
	upLimit = nowday_secs +
	((-TimeElement.days*24 + TimeElement.hour)*60 + TimeElement.min)*60;
}


TIME::~TIME (void)
{
	Array.StrDelete (&periodString);
//	printf ("TIME DESTRUCTOR\n");
}


TIME& TIME::operator= (const TIME &rhs)
{
	if (this != &rhs)	{
// ќсвобождаем пам€ть
		Array.StrDelete (&periodString);
// »нициализируем заново
		periodString = Array.StrCopy (rhs.periodString);
	}
	return *this;
}


unsigned TIME::ConvertDay (const char *const day)
{
	if (!stricmp (day, "TODAY"))
		return 0;
	if (!stricmp (day, "YESTERDAY"))
		return 1;
	return ((unsigned) atoi (day));
}


void TIME::DebugPrint (void) const
{
	printf ("PERIOD: %s\n", periodString);
	printf ("LOWLIMIT: %ld, UPLIMIT: %ld\n", lowLimit, upLimit);
}


