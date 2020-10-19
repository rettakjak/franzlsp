#include "global.h"

#define SNIL 0

int big_debug = FALSE;

/* changed args to emul (see emul.c) */

dmlad(ptr,mul,add)
lispval ptr;
{
  lispval psave, penult;
  long c, flag, res[2];

  psave = ptr;
  c = add;
  do {
      emul((ptr->s.I), mul, c, &res);
   
      /* convert from 32/32 to 32/30 */
      res[0] <<= 2;
      if(res[1] < 0) res[0] += 2;
      if(res[1] & 0x40000000) res[0] += 1;
      res[1] &= 0x3fffffff;

      c = res[0];
      ptr->s.I = res[1];
      penult = ptr;
      ptr = ptr->s.CDR;
  } while(ptr!= SNIL);

  if (c != 0)
  {
     if (c == -1)
        penult->s.I |= 0xc0000000; 
     else
     {
        ptr = penult->s.CDR = newdot();
        ptr->s.I = c;
     }
  }
  ptr = psave;
}
