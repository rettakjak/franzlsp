/* 
 * Call a C function 'f' with args from 'arglist'.  arglist[0] contains
 * the number of arguments.
 *
 * Relies on behaviour of gcc.  But then it would anyway, wouldn't it.
 */

int callg_(fn, arglist)
int (*fn)();
int arglist[];
{
    int i;
    int zargs[arglist[0]];
/*
    printf("callg 0x%x(", fn);
    for(i=1; i<=arglist[0]; i++)
	printf("%d%s", arglist[i], i == arglist[0] ? ")\n" : ",");
*/
    for(i=arglist[0]; i>0; i--)
	zargs[i-1] = arglist[i];

    return (*fn)();
}
