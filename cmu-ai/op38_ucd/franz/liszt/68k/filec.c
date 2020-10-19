#include <stdio.h>

main (arc,argv)
char **argv;

{
  FILE *f,*g;
  int c;

  f = fopen(argv[1],"rb");
  g = fopen(argv[2],"wb");

  while (!feof(f))
    {c=fgetc(f);
     fputc(c,g);}
  printf("finished\n");
}

