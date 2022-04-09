
#include <cstdio>
#include <cstring>
#include "Utils.h"

char buffer[256];

int main(int argc, char* argv[]) {
    memset(buffer, 0, 256);
    Msg1(buffer);
    printf("%s\n", buffer);
    printf("Compile Options: ${CMAKE_CXX_FLAGS} -O0 -fno-stack-protector -mno-sse\n");

    if (argc == 1)
    {
        Msg2(buffer);
        printf("%s\n", buffer);
        return 1;
    }

    CTFLearnHiddenFlag();

    const char* userflag = argv[1];

    Msg3(buffer);
    int n = strcmp(buffer, userflag);
    if (n == 0)
    {
        Msg4(buffer);
        printf("%s\n", buffer);
        return 2;
    }

    size_t nx = strlen(userflag);
    if (nx != 30)
    {
        Msg6(buffer);
        printf("%s\n", buffer);
        return 3;
    }

    char *asdf = new char[256];
    Msg5(asdf);

    // Don't use strcmp so solvers can't see the symbol in the debugger
    int count = 0;
    for (int i=0; i<30; ++i)
    {
        if (asdf[i] != userflag[i])
            ++count;
    }

    memset(asdf, 0, 256);
    delete [] asdf;
    asdf = nullptr;

    if (count != 0)
    {
        Msg6(buffer);
        printf("%s\n", buffer);
        return 4;
    }

    Msg7(buffer);
    printf("\n%s %s\n\n", buffer, userflag);

    bool status = EnthalpyBasis(userflag);
    if (!status)
    {
        Msg6(buffer);
        printf("%s\n", buffer);
        return 5;
    }

    printf("All Done!\n");
    return 0;
}
