#include <stdlib.h>
#include <stdio.h>

int div_1(int a, int b)
{

  int q=0;
  while (a > b)
  {
    a = a - b;
    q++;
  }
 
  return q;
}

int main (int argc, char *argv[])
{
  int N = 1000;
  int L = 13645;
  int d = 134;
  int q1, q2;
  int i;
  
//   printf("\n argc = %d\n", argc);
  
  if (argc == 2)
  {
    srand(atoi (argv[1]));
    for (i = 0; i < atoi (argv[1]); i++)
    {
      q1 = rand()/d;
//       printf("\nq[%d]=%d", i, q1);
    }
    for (i = 0; i < 10; i++)
    {
      q1 = rand()/d;
      printf("\nq[%d]=%d", i, q1);
    }
    printf("\n\n");
    
  }
  else
  {
    printf("\nError\nUsage: %s nr_divisions\n\n", argv[0]);
    return 0;
  }

  return 0;
}
