int f(a, b, c)
int a,b,c;
{
    return a+b+c;
}

double g(a, b, c)
int a,b,c;
{
    return (double)(a+b+c);
}

int callg(fn, nargs, args)
int (*fn)();
int nargs, args[];
{
    int i;
    int zargs[nargs];

    for(i=0; i<nargs; i++)
	zargs[i] = args[i];

    return (*fn)();
}

main()
{
    int args[] = {13,14,15};

    printf("%d\n", callg(&f, 3, args));
    printf("%lf\n", (* ((double (*)())callg))(&g, 3, args));
}
