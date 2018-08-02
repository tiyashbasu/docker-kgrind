#include <iostream>

void printArgs ( int argc, char **argv )
{
    for (ushort i = 1; i < argc; i++)
    {
        std::cout << argv[i] << ' ' << std::flush;
    }

    std::cout << std::endl;
}

int main ( int argc, char **argv )
{
    std::cout << argc - 1 << std::endl;
    printArgs(argc, argv);

    return 0;
}
