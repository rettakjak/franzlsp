/*      @(#)a.out.h 1.22 88/03/06 SMI; from UCB 4.1 83/05/03       */

#if defined(TARGET)

   /* Used when building a cross-tool, with the target system architecture
    * determined by the TARGET preprocessor variable at compile time.
    * Usage:
    *      #include <a.out.h>
    * ...plus compilation with command (e.g. for Sun-4 target architecture):
    *      cc  -DSUN2=2 -DSUN3=3 -DSUN4=4  -DTARGET=SUN4  ...
    * Note: this may go away in a future release.
    */
#  if   TARGET == SUN2
#    include "sun2/a.out.h"
#  elif TARGET == SUN3
#    include "sun3/a.out.h"
#  elif TARGET == SUN4
#    include "sun4/a.out.h"
#  elif TARGET == VAX
#    include "vax/a.out.h"
#  endif

#else /*!defined(TARGET)*/

   /* The usual, native case.  Usage:
    *      #include <a.out.h>
    *
    * These include's would be more accurately keyed by target system
    * architecture instead of target processor type.  However, of the two,
    * only target processor type is currently predefined by the preprocessor.
    */
#  if   defined(mc68010)
#    include "sun2/a.out.h"
#  elif defined(mc68020)
#    include "sun3/a.out.h"
#  elif defined(sparc)
#    include "sun4/a.out.h"
#  elif defined(vax)
#    include "vax/a.out.h"
#  endif

#endif /*defined(TARGET)*/


/*
 * Usage when building a cross-tool with a fixed target system architecture
 * (Sun-4 in this example), bypassing this file:
 *      #include <sun4/a.out.h>
 */
