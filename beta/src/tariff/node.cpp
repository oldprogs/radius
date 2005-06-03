#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tariff.h"

using namespace std;


NODE::NODE (const char *const node, const char *const title)
{
	nodeString = NULL;
	zonePart = regionPart = nodePart = pointPart = 0;
	sessions.in = sessions.out = sessions.all = 0;
	traffic.in = traffic.out = 0;
	time.in = time.out = time.all = 0;
// Это вариант объекта для суммирования по всем нодам
	if (!node)	{
		nodeString = Array.StrCopy (title);
		return;
	}
	SetNode (node);
}


NODE::NODE (const NODE &Node)
{
	nodeString = Array.StrCopy (Node.nodeString);
	zonePart = Node.zonePart;
	regionPart = Node.regionPart;
	nodePart = Node.nodePart;
	pointPart = Node.pointPart;
	sessions.in = sessions.out = sessions.all = 0;
	traffic.in = traffic.out = 0;
	time.in = time.out = time.all = 0;
}


NODE::~NODE (void)
{
	Array.StrDelete (&nodeString);
//	printf ("NODE DESTRUCTOR\n");
}


NODE& NODE::operator= (const NODE &rhs)
{
	if (this != &rhs)	{
// Освобождаем память
		Array.StrDelete (&nodeString);
// Инициализируем заново
		SetNode (rhs.nodeString);
	}
	return *this;
}


void NODE::DebugPrint (void) const
{
	printf ("ZONE: %u, REGION: %u, NODE: %u, POINT: %u\n", 
		zonePart, regionPart, nodePart, pointPart);
	printf ("SESSIONS IN: %u, OUT: %u, ALL: %u\n", 
		sessions.in, sessions.out, sessions.all);
	printf ("TRAFFIC IN: %f, OUT: %f\n", 
		traffic.in, traffic.out);
	printf ("TIME IN: %ld, OUT: %ld, ALL: %ld\n", 
		time.in, time.out, time.all);
}


void NODE::SetNode (const char *const node)
{
	const char *to;
	char *temp;
	
// Выделяем память заново и инициализируем ее переданными значениями
	nodeString = Array.StrCopy (node);
	temp = Array.StrCopy (node);

	to = PartCopy (&pointPart, temp, temp + strlen (temp), '.');
	to = PartCopy (&nodePart, temp, to, '/');
	to = PartCopy (&regionPart, temp, to, ':');
	PartCopy (&zonePart, temp, to, 0);
	
	delete [] temp;
}


const char* NODE::PartCopy
(unsigned *const destPtr, char *source, const char *to, const char token)
{
	char *from, *buffer;

// Ищем вхождение переданного символа
	if (token)	{
// Если символа нету, то эта часть адреса будет равна "0";
		if (!(from = strchr (source, token)))	{
			*destPtr = 0;
			return to;
		}
		*from++ = '\0';
	}
	else
		from = source;

	if (from >= to)	{
		*destPtr = 0;
		return to;
	}
	buffer = Array.StrPart (from, to);
	*destPtr = (unsigned) atoi (buffer);
	delete [] buffer;

	return (from - 1);
}


int NODE::CompareWith (const NODE &Node) const
{
	if (zonePart != Node.zonePart)
		return (zonePart > Node.zonePart ? 1 : -1);
	if (regionPart != Node.regionPart)
		return (regionPart > Node.regionPart ? 1 : -1);
	if (nodePart != Node.nodePart)
		return (nodePart > Node.nodePart ? 1 : -1);
	if (pointPart != Node.pointPart)
		return (pointPart > Node.pointPart ? 1 : -1);
	return 0;
}

