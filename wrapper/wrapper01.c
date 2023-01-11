#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
    if (argc < 2) {
        printf("Usage: %s <shellcode>\n", argv[0]);
        return 1;
    }
    
    int (*funct)();
    funct = (int (*)()) argv[1];
    (int)(*funct)();
    return 0;
}