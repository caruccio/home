#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <iostream>
#include <string>

static void printError(const std::string& errName)
{
	//std::cout << i << ":" << sys_errlist[i] << endl
}

static void printError(const error_t errNo)
{
		std::cout << errNo << ": " << strerror(errNo) << std::endl;
}

static void printAllErrors(void)
{
	for (error_t i = 0; i < sys_nerr; ++i)
		printError(i);
}

int main(int argc, char* argv[])
{
	if (argc == 1) {
		printAllErrors();
		return 0;
	}

	const error_t errNo = atoi(argv[1]);

	if (errNo == 0)
		printError(argv[1]);
	else
		printError(errNo);

	return 0;
}
