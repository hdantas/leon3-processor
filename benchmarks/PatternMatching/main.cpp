/*
 * File:   main.cpp
 * Author: Calin (bcalin1984@yahoo.com)
 *
 * Created on December 19, 2012, 3:32 PM
 *
 */

#include <iostream>
#include <limits>
#include <string.h>
#include <fstream>
using namespace std;

#include "utils.h"
#include "timing.h"

#include "basic_match_tests.h"
#include "basic_match_tests_ssd16.h"
#include "basic_match_tests_aligned.h"

using namespace std;

int main(int argc, char *argv[])
{
    int i = 1;
    char *LogFileName = (char*)"RunScores.log";
    FILE *logfile = fopen(LogFileName, "w");

    if (argc == 3)
    {
        char *fn1 =(char*)argv[1];
        char *fn2 =(char*)argv[2];
        test_BasicMatching_All_SSD_aligned(fn1, fn2, logfile);
        fclose(logfile);
    }
    else
    {
        cout << endl << "Usage: ssd_sparc.out infile1 infile2" << endl;
        return 0;
    }
    return 0;
}

