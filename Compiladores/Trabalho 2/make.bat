flex -oanalex.c analex.l
bison -o sint.c sint.y -d
gcc sint.c -o sint.exe