#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "tariff.h"

using namespace std;


OPTIONS::OPTIONS (const int ARGC, const char *const ARGV[])
{
 	char *option, *value;
	const char *beg, *sep, *end;
	struct tm *ltime_beg;
	
	error = -1;
  	Node = NULL;
  	Time = NULL;

	time_beg = time (NULL);
	ltime_beg = localtime (&time_beg);
// Запомним, действует ли сейчас летнее время (DST)
	isDst = ltime_beg->tm_isdst;
	ltime_beg->tm_hour = ltime_beg->tm_min = ltime_beg->tm_sec = 0;
	nowday_secs = mktime (ltime_beg);

 	radius_log_file = output_file = NULL;
 	cost_factor = 0;
	process_all_log = process_all_nodes = process_none_nodes = false;
	periods_number = nodes_number = 0;
	Node = NULL;

// Считывание параметров командной строки	
	for (int i = 1; i < ARGC; i++)	{
		if (sep = strchr (ARGV[i], '='))	{
			option = Array.StrPart (ARGV[i], sep);
			value = Array.StrPart (sep + 1, ARGV[i] + strlen (ARGV[i]));
		}
		else	{
			option = Array.StrCopy (ARGV[i]);
			value = (++i < ARGC) ? 
	   				Array.StrCopy (ARGV[i]) : Array.StrCopy ("0");
		}
		AssignOptions (option, value);
		delete [] option;
		delete [] value;
	}

	if (!radius_log_file)
		radius_log_file = Array.StrCopy ("tariff.log");
	if (!output_file)
		output_file = Array.StrCopy ("tariff.stat");
	if (!cost_factor)
		cost_factor = 1;
	if (!nodes_number && !process_none_nodes)
		process_all_nodes = true;
	if (!periods_number)
		process_all_log = true;
}


OPTIONS::~OPTIONS (void)
{
	Array.StrDelete (&radius_log_file);
	Array.StrDelete (&output_file);
	ClearNodes ();
	ClearPeriods ();
//	printf ("OPTIONS DESTRUCTOR\n");
}


void OPTIONS::AssignOptions (const char *const option, 
							const char *const value)
{
	const char *beg, *end;
	char *buffer;

// Запоминаем лог
	if (!strcmp (option, "-l") || !strcmp (option, "--l")
 									|| !strcmp (option, "/l"))
		radius_log_file = Array.StrCopy (value);
// Запоминаем выходной файл статистики
	else if (!strcmp (option, "-o") || !strcmp (option, "--o")
 										|| !strcmp (option, "/o"))
		output_file = Array.StrCopy (value);
// Коэффициент стоимости
	else if (!strcmp (option, "-f") || !strcmp (option, "--f")
 											|| !strcmp (option, "/f"))
		cost_factor = atof (value);
// Список нод
	else if (!strcmp (option, "-n") || !strcmp (option, "--n")
 										|| !strcmp (option, "/n"))	{
		if (!process_all_nodes && !process_none_nodes)	{
			beg = value;
			end = value + strlen (value);
			while (buffer = Array.StrDisjoint (&beg, end, ','))	{
				if (CheckNodes (buffer))
					return;
				Node = Array.ArrayPush<NODE>
   							(Node, new NODE (buffer), nodes_number++);
				delete [] buffer;
			}
		}
	}
// Временные интервалы
	else if (!strcmp (option, "-p") || !strcmp (option, "--p")
 										|| !strcmp (option, "/p"))	{
		if (!process_all_log)	{
			beg = value;
			end = value + strlen (value);
			while (buffer = Array.StrDisjoint (&beg, end, ','))	{
				if (CheckPeriods (buffer))
					return;
				Time = Array.ArrayPush<TIME>
   							(Time, new TIME (buffer, nowday_secs), periods_number++);
				delete [] buffer;
			}
		}
	}
	else if (!strcmp (option, "-?") || !strcmp (option, "--?") || !strcmp (option, "/?")
		|| !strcmp (option, "-h") || !strcmp (option, "--h") || !strcmp (option, "/h"))	{
		PrintHelp ();
		error = 0;
	}
	else	{
		PrintError ();
		error = 1;
	}
}


bool OPTIONS::CheckNodes (const char *const node)
{
	if (!stricmp (node, "ALL"))
		process_all_nodes = true;
	else if (!stricmp (node, "NONE"))
		process_none_nodes = true;

	if (process_all_nodes || process_none_nodes)	{
		ClearNodes ();
		return true;
	}
	return false;
}


bool OPTIONS::CheckPeriods (const char *const period)
{
	if (!stricmp (period, "ALL"))	{
		ClearPeriods ();
		process_all_log = true;
		return true;
	}
	return false;
}


void OPTIONS::ClearNodes (void)
{
	Array.ArrayClear<NODE> (Node, nodes_number);
	nodes_number = 0;
}


void OPTIONS::ClearPeriods (void)
{
	Array.ArrayClear<TIME> (Time, periods_number);
	periods_number = 0;
}


void OPTIONS::PrintHelp (void)
{
	printf ("\nRadius tariff statistics generator v. 4.010d (C) Alexey Gradovtsev, 2003-2004\n");
	printf ("Usage: tariff.exe  [-Option_1 [-Option_2 ...]]\n\n");
	printf ("Options:\n");
	printf (" ? | h\t\tThis help info.\n");
	printf (" l Log_name\tName of Radius logfile to process.\n");
	printf (" o Output_file\tName of a file to write statistics to. If equal to STDOUT or\n");
	printf ("\t\thyphen (-), the statistics is written to the standard output.\n");
	printf (" p Period_1[,Period_2,...Period_n]\n");
	printf ("\t\tDate and time interval (intervals) to process log data within.\n");
	printf ("\t\tPeriod format: DAY.HOUR:MIN-DAY.HOUR:MIN\n");
	printf ("\t\twhere DAY - number of days ago from the current date (0 defines\n");
	printf ("\t\ttoday), HOUR:MIN - time at the date specified. Keyword ALL\n");
	printf ("\t\tforces to process all the log file. You are also allowed to use\n");
	printf ("\t\tkeywords TODAY, YESTERDAY instead of numeric DAY value.\n");
	printf (" n Node_1[,Node_2,...Node_n]\n");
	printf ("\t\tFTN addresses, in 4d-format, of those nodes to gather\n");
	printf ("\t\tstatistics about. Keyword ALL forces statistics gathering about\n");
	printf ("\t\tall the nodes found. Keyword NONE can be used to output summary\n");
	printf ("\t\tstatistics only.\n");
	printf (" f Cost_factor\tRate of exchange: IP_currency/Dial-up_currency. It is used to\n");
	printf ("\t\tcompute IP-sessions cost using Radius-log tariffs, by formula:\n");
	printf ("\t\t\tIP_cost = cost_factor*IP_tariff");
}


void OPTIONS::PrintError (void)
{
	fprintf (stderr, "\nError: Illegal syntax.\n");
	fprintf (stderr, "Type 'tariff.exe -h' for help.\n");
}

