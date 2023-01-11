#include <unistd.h>

int main(void) {
    char *args[] = { "/bin/sh", NULL };
    execve("/bin/sh", args, NULL);
    return 0;
}