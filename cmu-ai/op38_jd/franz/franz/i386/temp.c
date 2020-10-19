main()
{
    int p[2], q;
    char e;

    ediv(p, q, &e);
}

g(x)
{
    return 5;
}

ediv(int p[2], int q, char *err)
{
    int x;

    x = p[0] / q;

    g(x);
}

emul(int p, int q, int r, int s[2])
{
    s[1] = p*q+r;
    s[1] += 5;
}

var()
{
    int a=1, b=g(), c=3, d=4;

    a+=b;
    b+=c;
    c+=(a+b);
    
    return c;
}

