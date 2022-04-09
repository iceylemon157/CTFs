
#include <cstdio>
#include <cstring>
#include <time.h>

const char* UsageMsg = "Usage: Rangoon CTFlearn{flag}";
const char* WrongFlagMsg = "You entered the wrong flag :-(";
const char* AllDoneMsg   = "All Done!";
const char* CongratsMsg  = "CONGRATULATIONS, you found the flag: ";

const char *WelcomeMsg = "CTFLearn Reversing Challenge: Rangoon";
const char* s0 = "King";
const char* s1 = "Queen";
const char* s2 = "Prince";
const char* s3 = "Princess";
const char* s4 = "Yangon";
const char* s5 = "Myanmar";
const char* s6 = "Burma";
const char* s7 = "Alexander Fraser";
const char* s8 = "Maha";
const char* s9 = "Thaketa";
const char* s10 = "Bago River";
const char* s11 = "Shwedagon Pagoda";
const char* s12 = "Devi";
const char* s13 = "Kandawgyi Nature Park";
const char* s14 = "People's Square and Park";
const char* s15 = "I love Rangoon!";

const char **strings = nullptr;

char buffer[256];

void FillInStrings()
{
    strings = new const char*[16];
    strings[0] = s0;
    strings[1] = s1;
    strings[2] = s2;
    strings[3] = s3;
    strings[4] = s4;
    strings[5] = s5;
    strings[6] = s6;
    strings[7] = s7;
    strings[8] = s8;
    strings[9] = s9;
    strings[10] = s10;
    strings[11] = s11;
    strings[12] = s12;
    strings[13] = s13;
    strings[14] = s14;
    strings[15] = s15;
}

int main(int argc, char* argv[]) {
    clock_t start_time = clock();
//    printf("sizeof clock_t: %ld\n", sizeof(clock_t));
//    printf("start_time:     %ld\n", start_time);
    FillInStrings();
    memset(buffer, 0, sizeof(buffer));

    printf("%s\n\n", WelcomeMsg);
    printf("Compile Options: ${CMAKE_CXX_FLAGS} -O0 -fno-stack-protector -mno-sse\n");

    if (argc == 1)
    {
        printf("%s\n\n", UsageMsg);
        return 1;
    }

    const char* userflag = argv[1];  // user flag

    if (strncmp(userflag, "CTFlearn{", 9 ) != 0)
    {
        printf("%s\n\n", WrongFlagMsg);
        return 2;
    }

    unsigned int i3 = 9;
    size_t n = strlen(userflag);
    if (n == 28)
    {
        i3 += 3;
    }

    if (userflag[n-1] != '}')
    {
        printf("%s\n\n", WrongFlagMsg);
        return 4;
    }
    // 01234567890123456789012345678
    // CTFlearn{Princess_Maha_Devi}
    unsigned int i1 = 2;
    if (userflag[17] == '_') {
        i1 += 1;
    }

    unsigned int i2 = 3;
    if (userflag[22] == '_') {
        i2 += 5;
    }

    strcat(buffer, "CTFlearn{");
    strcat(buffer, strings[i1]);
    strcat(buffer, "_");
    strcat(buffer, strings[i2]);
    strcat(buffer, "_");
    strcat(buffer, strings[i3]);
    strcat(buffer, "}");
    const char* flag = buffer;

    n = strlen(flag);
    if (n != 28)
    {
        printf("%s\n\n", WrongFlagMsg);
        return 3;
    }

    n = strcmp(userflag, buffer);
    if (n == 0)
    {
        printf("%s %s\n\n", CongratsMsg, userflag);
    }
    else
    {
        printf("%s\n\n", WrongFlagMsg);
        return 5;
    }

    clock_t end_time = clock();
//    double elapsed_time = (end_time - start_time)/(double)CLOCKS_PER_SEC;
//    printf("Execution Time: %.0f micro seconds\n", elapsed_time*1.0e6);
//    printf("end_time: %ld\n", end_time);
    printf("Elapsed time in clock ticks: %ld\n", end_time - start_time);
    printf("%s\n\n", AllDoneMsg);

    return 0;
}
