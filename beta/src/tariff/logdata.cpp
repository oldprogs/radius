#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "tariff.h"

using namespace std;


LOGDATA::LOGDATA (class OPTIONS *Options)
{
	error = -1;
	
  	OPTIONS = Options;
	RADIUS_LOG_FILE = OUTPUT_FILE = NULL;
	cost_dial = cost_IP = cost_all = 0;
	firstDate = lastDate = NULL;
	nodes_number = 0;
// ฤ๎แเโ๋ÿๅ์ ๏๑ๅโไ๎ํ๎ไ๓ ๑ ่์ๅํๅ์ "All nodes"
	Node = Array.ArrayPush<NODE>
 					(Node, new NODE (NULL, "All nodes"), nodes_number++, 0);
// ส๎๏่๐๓ๅ์ โ๑ๅ ํ๎ไ๛ ่็ ็เไเํํ๛๕ โ ๊๎์เํไํ๎้ ๑๒๐๎๊ๅ
	for (int i = 0; i < OPTIONS->nodes_number; i++)
		Node = Array.ArrayPush<NODE>
  			(Node, new NODE (*OPTIONS->Node[i]), nodes_number++);

	if (!(RADIUS_LOG_FILE = fopen (OPTIONS->radius_log_file, "rt")))	{
		fprintf (stderr, "Cannot open %s!\n", OPTIONS->radius_log_file);
		error = 1;
	}
}


LOGDATA::~LOGDATA (void)
{
	if (RADIUS_LOG_FILE)	{
		fclose (RADIUS_LOG_FILE);
		RADIUS_LOG_FILE = NULL;
	}
	Array.StrDelete (&firstDate);
	Array.StrDelete (&lastDate);
	ClearNodes ();
//	printf ("LOGDATA DESTRUCTOR\n");
}


void LOGDATA::ReadLog (void)
{
	const unsigned MAXSIZE = 200, MAXFIELD = 30;
	char logStr[MAXSIZE];
	char logValue[ELEMENTS][MAXFIELD];
	float logCost, logMbRec, logMbTransm;
	const char *beg, *end, *flagPtr;
	int compare, line = 1, i;
	long duration;
	bool insert, add;
	char *pos;
	NODE *TempNode;
	
	while (fgets(logStr, MAXSIZE, RADIUS_LOG_FILE))	{

		beg = logStr;
		end = logStr + strlen (logStr);

		for (i = 0; i < ELEMENTS; i++)
			if (!(flagPtr = Array.StrDisjoint (&beg, end, ';', logValue[i], MAXFIELD - 1)))
				break;

// ฯ๐๎โๅ๐๊เ ํเ ๑๓๙ๅ๑๒โ๎โเํ่ๅ โ ๑๒๐๎๊ๅ โ๑ๅ๕ ๒๐ๅแ๓ๅ์๛๕ ๏๎๋ๅ้
		if (!flagPtr)	{
			fprintf (stderr, "\nWarning: Syntax error in %s at line %d:\n",
   												OPTIONS->radius_log_file, line);
			fprintf (stderr, "%s\nString format required:\n", logStr);
			fprintf (stderr, "Session_dir;Transport;4d address;IP/telephone;"
					"Start time (DD.MM.YYYY HH:MM:SS); Stop time (DD.MM.YYYY HH:MM:SS);"
					"Mb transmitted;Mb received;Session cost\n");
			continue;
		}
// วเ๏๎์่ํเๅ์ โ๐ๅ์ÿ ํเ๗เ๋เ ๋๎ใเ
		if (line == 1)
			firstDate = Array.StrCopy (logValue[START_TIME]);
// ฯ๐๎โๅ๐๊เ ํเ ๏๎๏เไเํ่ๅ โ ๎ไ่ํ ่็ โ๐ๅ์ๅํํ๛๕ ่ํ๒ๅ๐โเ๋๎โ
		if (!OPTIONS->process_all_log && !CheckTimePeriod (logValue[START_TIME]))
			continue;
// ฯๅ๐ๅโ๎ไ่์ ๗่๑๋๎โ๛ๅ ็ํเ๗ๅํ่ÿ ่็ ๑๒๐๎๊ โ ๗่๑๋เ (็เ์ๅํ่โ ',' ํเ '.')
		if (pos = strchr (logValue[COST], ','))	*pos = '.';
		logCost = atof (logValue[COST]);
		if (pos = strchr (logValue[MB_RECEIVED], ','))	*pos = '.';
		logMbRec = atof (logValue[MB_RECEIVED]);
		if (pos = strchr (logValue[MB_TRANSMITTED], ','))	*pos = '.';
		logMbTransm = atof (logValue[MB_TRANSMITTED]);

// วเ๏๎์ํ่๋่ ๏๐๎ไ๎๋ๆ่๒ๅ๋üํ๎๑๒ü ๑ๅ๑๑่่ โ ์่ํ๓๒เ๕
		duration = (long) difftime (DateToSecs (logValue[STOP_TIME]), 
									DateToSecs (logValue[START_TIME])) / 60 + 1;
		i = 0;
		while (1)	{
// ย ý๒๎์ ๖่๊๋ๅ ่๙ๅ์ ํ๎ไ๓ โ ๑๏่๑๊ๅ ๓ๆๅ ็เํๅ๑ๅํํ๛๕ ํ๎ไ
// ่ ๋่แ๎ โ๑๒เโ๋ÿๅ์ ํ๎โ๓þ ็เ๏่๑ü, ๋่แ๎ ๎แํ๎โ๋ÿๅ์ ๓ๆๅ ๑๓๙ๅ๑๒โ๓þ๙๓þ
			insert = add = false;
			TempNode = new NODE (logValue[ADDRESS]);
			if (i >= nodes_number)	{
				if (OPTIONS->process_all_nodes)
    				insert = add = true;
				else
    				break;
			}
			else if (i)	{
				compare = TempNode->CompareWith (*Node[i]);
				if (OPTIONS->process_all_nodes)	{
					if (!compare)
						add = true;
					else if (compare < 0)
						insert = add = true;
				}
				else if (!compare)
					add = true;
				if (!insert)
					delete TempNode;
			}
			else
				add = true;
			
			if (insert)
// ย๑๒เโ๋ÿๅ์ ํ๎ไ๓ โ ์เ๑๑่โ ๏๎ไ ํ๎์ๅ๐๎์ i
				Node = Array.ArrayPush<NODE>
						(Node, TempNode, nodes_number++, i);
			if (add)	{
// ฮแํ๎โ๋ÿๅ์ ไเํํ๛ๅ ๎ ํ๎ไๅ
				Node[i]->sessions.all++;
				Node[i]->time.all += duration;
				if (!stricmp (logValue[DIRECTION], "IN"))	{
					Node[i]->sessions.in++;
					Node[i]->time.in += duration;
				}
				else	{
					Node[i]->sessions.out++;
					Node[i]->time.out += duration;
				}
				Node[i]->traffic.in += logMbRec;
				Node[i]->traffic.out += logMbTransm;
				if (i)
					break;
				else
					if (stricmp (logValue[TRANSPORT], "IP"))
						cost_dial += logCost;
					else
						cost_IP += logCost;
			}
			if (insert)
				break;
			i++; line++;

		}

		if (lastDate)
			delete [] lastDate;
		lastDate = Array.StrCopy (logValue[STOP_TIME]);

	}

	cost_dial = fabs (cost_dial);
	cost_IP = fabs (cost_IP);
	cost_IP *= OPTIONS->cost_factor;
	cost_all = cost_IP + cost_dial;
	if (nodes_number > 1)	{
		Node = Array.ArrayPush<NODE>
 						(Node, new NODE (NULL, "Total"), nodes_number);
		for (i = 1; i < nodes_number; i++)	{
			Node[nodes_number]->sessions.in += Node[i]->sessions.in;
			Node[nodes_number]->sessions.out += Node[i]->sessions.out;
			Node[nodes_number]->sessions.all += Node[i]->sessions.all;
			Node[nodes_number]->time.in += Node[i]->time.in;
			Node[nodes_number]->time.out += Node[i]->time.out;
			Node[nodes_number]->time.all += Node[i]->time.all;
			Node[nodes_number]->traffic.in +=
   				(Node[i]->traffic.in = fabs (Node[i]->traffic.in));
			Node[nodes_number]->traffic.out +=
   				(Node[i]->traffic.out = fabs (Node[i]->traffic.out));
		}
		nodes_number++;
	}
}


bool LOGDATA::CheckTimePeriod (const char *const timeStr)
{
	long logdate_secs = DateToSecs (timeStr);
	
	if (logdate_secs == -1)
		fprintf (stderr, "\nWarning: Illegal time string: %s in %s.\n", 
  								timeStr, OPTIONS->radius_log_file);
	else
		for (int i = 0; i < OPTIONS->periods_number; i++)
			if (logdate_secs > OPTIONS->Time[i]->lowLimit &&
				logdate_secs < OPTIONS->Time[i]->upLimit + 60)
				return true;
	
	return false;
}


long LOGDATA::DateToSecs (const char *const timeStr)
{
	char day[3], month[3], year[5], hour[3], min[3], sec[3];
	struct tm logTime;
	const char *beg, *end;
// 27.12.2003 11:05:37

	beg = timeStr;
	end = timeStr + strlen (timeStr);

	Array.StrDisjoint (&beg, end, '.', day, 2);
	Array.StrDisjoint (&beg, end, '.', month, 2);
	Array.StrDisjoint (&beg, end, ' ', year, 4);
	Array.StrDisjoint (&beg, end, ':', hour, 2);
	Array.StrDisjoint (&beg, end, ':', min, 2);
	Array.StrDisjoint (&beg, end, '\0', sec, 2);

	logTime.tm_year = (strlen (year) == 2 ?
 						atoi (year) + 100 : atoi (year) - 1900);
	logTime.tm_mon  = atoi (month) - 1;
	logTime.tm_mday = atoi (day);
	logTime.tm_hour = atoi (hour);
	logTime.tm_min  = atoi (min);
	logTime.tm_sec  = atoi (sec);
	logTime.tm_isdst = OPTIONS->isDst;
    
//	printf ("MKTIME: %ld\n", mktime (&logTime));
	return mktime (&logTime);
}


void LOGDATA::ClearNodes (void)
{
	Array.ArrayClear<NODE> (Node, nodes_number);
	nodes_number = 0;
}


void LOGDATA::OutPut (void)
{
	const unsigned strfMax = 30;
	char *const dateStr = new char[80], strfStr1[strfMax + 1], strfStr2[strfMax + 1];
	struct tm *time_struct;
	long secDate;
	int i;

	if (!strcmp (OPTIONS->output_file, "STDOUT") ||
					!strcmp (OPTIONS->output_file, "-"))
		OUTPUT_FILE = stdout;
	else		
		if (!(OUTPUT_FILE = fopen (OPTIONS->output_file, "wt")))	{
			fprintf (stderr, "Cannot open %s!\n", OPTIONS->output_file);
			error = 1;
			return;
		}
// ย๛โ๎ไ ็เใ๎๋๎โ๊เ	
	CarriageReturn (1);
	PrintString (". . .  Cost statistics  . . .", 78, 0);
	CarriageReturn (3);
// ฯ๐ๅ๎แ๐เ็๎โเํ่ๅ โ ๑๒๐๎๊๓ ่ โ๛โ๎ไ ๏ๅ๐่๎ไเ (๎โ) ๑๊เํ่๐๎โเํ่ÿ
	if (OPTIONS->process_all_log)	{
		secDate = DateToSecs (firstDate);
		time_struct = localtime (&secDate);
		strftime (strfStr1, strfMax, "%#H:%M, %#d %b %Y", time_struct);
		secDate = DateToSecs (lastDate);
		time_struct = localtime (&secDate);
		strftime (strfStr2, strfMax, "%#H:%M, %#d %b %Y", time_struct);
		sprintf (dateStr, "From %s to %s", strfStr1, strfStr2);
		PrintString (dateStr, 78, 0, true);
		PrintString ("(Scanning all the logfile)", 78, 0, true);
	}
	else
 		for (i = 0; i < OPTIONS->periods_number; i++)	{
			time_struct = localtime (&OPTIONS->Time[i]->lowLimit);
			strftime (strfStr1, strfMax, "%#H:%M, %#d %b %Y", time_struct);
			time_struct = localtime (&OPTIONS->Time[i]->upLimit);
			strftime (strfStr2, strfMax, "%#H:%M, %#d %b %Y", time_struct);
			sprintf (dateStr, "From %s to %s", strfStr1, strfStr2);
			if (i)
				PrintString ("and", 78, 0, true);
			PrintString (dateStr, 78, 0, true);
		}
	CarriageReturn (2);

	PrintString ("ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ", 78, 0, true);
	PrintString ("ณ Link table  ณÞ", 78, 0, true);
	PrintString ("ภฤฤฤฤฤฤฤฤฤฤฤฤฤูÞ", 78, 0, true);
	PrintString ("  ฿฿฿฿฿฿฿฿฿฿฿฿฿฿", 78, 0, true);
	CarriageReturn (1);
	PrintString ("           ษอออออออออออออออออออออหออออออออออัออออออออออัออออออออออป", 67, -1, true);
	PrintString ("           บ     FTN Address     บ   N In   ณ  N Out   ณ  N All   บ", 67, -1, true);
	PrintString ("           ฬอออออออออออออออออออออฮออออออออออุออออออออออุออออออออออน", 67, -1, true);
	for (i = 1; i < nodes_number - 1; i++)
		CyclePrint (1, i);
	if (nodes_number > 1)	{
		if (!OPTIONS->process_all_nodes)	{
			PrintString ("           วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤถ", 67, -1, true);
			CyclePrint (1, i);
		}
		PrintString ("           ฬอออออออออออออออออออออฮออออออออออุออออออออออุออออออออออน", 67, -1, true);
	}
	CyclePrint (1, 0);
	PrintString ("           ศอออออออออออออออออออออสออออออออออฯออออออออออฯออออออออออผ", 67, -1, true);
	CarriageReturn (2);
	
	PrintString ("ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ", 78, 0, true);
	PrintString ("ณ Transfer table  ณÞ", 78, 0, true);
	PrintString ("ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤูÞ", 78, 0, true);
	PrintString ("  ฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿", 78, 0, true);
	CarriageReturn (1);
	PrintString ("ษอออออออออออออออออออออหออออออออออัออออออออออัออออออออออัออออออออออัออออออออออป", 78, -1, true);
	PrintString ("บ     FTN Address     บ Time in  ณ Time out ณ Time all ณ Sent, Mb ณ Rece, Mb บ", 78, -1, true);
	PrintString ("ฬอออออออออออออออออออออฮออออออออออุออออออออออุออออออออออุออออออออออุออออออออออน", 78, -1, true);
	for (i = 1; i < nodes_number - 1; i++)
		CyclePrint (2, i);
	if (nodes_number > 1)	{
		if (!OPTIONS->process_all_nodes)	{
			PrintString ("วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤถ", 78, -1, true);
			CyclePrint (2, i);
		}
		PrintString ("ฬอออออออออออออออออออออฮออออออออออุออออออออออุออออออออออุออออออออออุออออออออออน", 78, -1, true);
	}
	CyclePrint (2, 0);
	PrintString ("ศอออออออออออออออออออออสออออออออออฯออออออออออฯออออออออออฯออออออออออฯออออออออออผ", 78, -1, true);
	CarriageReturn (2);

	PrintString ("ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ ", 78, 0, true);
	PrintString ("ณ    Costs    ณÞ", 78, 0, true);
	PrintString ("ภฤฤฤฤฤฤฤฤฤฤฤฤฤูÞ", 78, 0, true);
	PrintString ("  ฿฿฿฿฿฿฿฿฿฿฿฿฿฿", 78, 0, true);
	CarriageReturn (1);
	PrintString ("          ษออออออออออออออออออัออออออออออออออออออัออออออออออออออออออป", 68, -1, true);
	PrintString ("          บ  IP sessions (*) ณ Dial-up sessions ณ       All        บ", 68, -1, true);
	PrintString ("          วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ", 68, -1, true);
	CyclePrint (3, 0);
	PrintString ("          ศออออออออออออออออออฯออออออออออออออออออฯออออออออออออออออออผ", 68, -1, true);
	CarriageReturn (1);

	PrintString (" (*) Cost factor: ", 18, -1);
	PrintString (OPTIONS->cost_factor, 18, -1);
	CarriageReturn (3);
	PrintString ("ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ", 78, -1, true);
	PrintString (" Created at ", 12, -1);
	secDate = time(NULL);
	time_struct = localtime (&secDate);
	strftime (strfStr1, strfMax, "%d/%m/%Y %H:%M", time_struct);
	PrintString (strfStr1, 16, 1);
	PrintString (".\tTime used: ", 13, -1);
	PrintString ((long) difftime (secDate, OPTIONS->time_beg), 8, -1);
	CarriageReturn (1);
	PrintString (" Radius tariff statistics generator v. 4.010d (C) Alexey Gradovtsev, 2003-2004", 78, -1, true);

	if (OUTPUT_FILE != stdout)	{
		fclose (OUTPUT_FILE);
		OUTPUT_FILE = NULL;
	}
}


void LOGDATA::PrintString (const char *const str,
					const unsigned max, const int align, const bool CR)
{
	const char *const pattern = "                                                                              ";
	char *beg, *buffer;
	unsigned length = strlen (str);
	
	if (length > max)
		length = max;
	buffer = Array.StrPart (pattern, pattern + max);
	if (align < 0)
		beg = buffer;
	else if (!align)
		beg = buffer + (max - length + 1)/2;
	else
		beg = buffer + (max - length);

	strncpy (beg, str, length);
	fprintf (OUTPUT_FILE, buffer);
	delete [] buffer;
	
	if (CR)
		CarriageReturn (1);
}


void LOGDATA::PrintString (const int number,
							const unsigned max, const int align)
// ย ý๒๓ ๔๓ํ๊๖่þ ๏ๅ๐ๅไเþ๒๑ÿ ไเํํ๛ๅ ๎ ๊๎๋่๗ๅ๑๒โๅ ๑ๅ๑๑่้ (unsigned int)
{
	char str[9];
	
	sprintf (str, "%d", number);	
	PrintString (str, max, align);
}


void LOGDATA::PrintString (const float number,
					const unsigned max, const int align, const bool precise)
// ย ý๒๓ ๔๓ํ๊๖่þ ๏ๅ๐ๅไเþ๒๑ÿ ไเํํ๛ๅ ๎ ๏ๅ๐ๅไเํํ๛๕/๏๎๋๓๗ๅํํ๛๕ ไเํํ๛๕ (float)
{
	char str[17];
	
	if (precise)	
		sprintf (str, "%.5f", number);
	else
		sprintf (str, "%.3f", number);
	PrintString (str, max, align);
}


void LOGDATA::PrintString (const long number,
							const unsigned max, const int align)
// ย ý๒๓ ๔๓ํ๊๖่þ ๏ๅ๐ๅไเþ๒๑ÿ ไเํํ๛ๅ ๎ โ๐ๅ์ๅํ่ ๑ๅ๑๑่้ (long)
{
	char str[9];
	
	sprintf (str, "%d:%02d", number/60, number%60);	
	PrintString (str, max, align);
}


void LOGDATA::CyclePrint (const int scenario, const int i)
{
	switch (scenario)	{
	case 1:
		PrintString ("           บ ", 13, -1);
		PrintString (Node[i]->nodeString, 20, -1);
		PrintString ("บ ", 2, -1);
		PrintString ((int)Node[i]->sessions.in, 8, 0);
		PrintString (" ณ ", 3, -1);
		PrintString ((int)Node[i]->sessions.out, 8, 0);
		PrintString (" ณ ", 3, -1);
		PrintString ((int)Node[i]->sessions.all, 8, 0);
		PrintString (" บ", 2, -1, true);
		break;
	case 2:
		PrintString ("บ ", 2, -1);
		PrintString (Node[i]->nodeString, 20, -1);
		PrintString ("บ ", 2, -1);
		PrintString (Node[i]->time.in, 8, 0);
		PrintString (" ณ ", 3, -1);
		PrintString (Node[i]->time.out, 8, 0);
		PrintString (" ณ ", 3, -1);
		PrintString (Node[i]->time.all, 8, 0);
		PrintString (" ณ ", 3, -1);
		PrintString (Node[i]->traffic.out, 8, 0);
		PrintString (" ณ ", 3, -1);
		PrintString (Node[i]->traffic.in, 8, 0);
		PrintString (" บ", 2, -1, true);
		break;
	case 3:
		PrintString ("          บ ", 12, -1);
		PrintString (cost_IP, 16, 0, true);
		PrintString (" ณ ", 3, -1);
		PrintString (cost_dial, 16, 0, true);
		PrintString (" ณ ", 3, -1);
		PrintString (cost_all, 16, 0, true);
		PrintString (" บ", 2, -1, true);
		break;
	}
}


void LOGDATA::CarriageReturn (unsigned n)
{
	while (n--)
		fprintf (OUTPUT_FILE, "\n");
}


