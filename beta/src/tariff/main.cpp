#include "tariff.h"

using namespace std;

// —борник часто используемых функций работы с массивами
ARRAY Array;

int main(int argc, char *argv[])
{
	int errcode;
	
//	NODE Node1 ("2:5030/1247");
//	NODE Node2 ("3:5030/1247.1");
//	Node1.PrintNode();
//	Node2.PrintNode();
	
	OPTIONS Options (argc, argv);
	if ((errcode = Options.Error ()) >= 0)
		return errcode;
		
	LOGDATA Data (&Options);
	if ((errcode = Data.Error ()) >= 0)
		return errcode;
		
	Data.ReadLog ();
	Data.OutPut ();
	if ((errcode = Data.Error ()) >= 0)
		return errcode;

	return 0;
}
