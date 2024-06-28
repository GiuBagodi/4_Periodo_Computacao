flex -oanalex.c analex.l
bison -o mycomp.c mycomp.y -d
gcc mycomp.c -o mycomp.exe

