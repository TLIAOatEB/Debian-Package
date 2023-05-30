#include <stdio.h>
#include "bd.h"
#define MAJOR 0
#define MINOR 0
#define PATCH 1

void print_version_debian_package(void)
{
    printf("Debian Package version: %d.%d.%d\n", MAJOR, MINOR, PATCH);
    return;
}

int main(void)
{
    bd();
    print_version_debian_package();
    return 0;
}