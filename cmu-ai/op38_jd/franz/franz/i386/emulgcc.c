emul(int p, int q, int r, int s[2])
{
    long long l;

    l = p;
    l *= q;
    l += r;
    
    s[0] = (l >> 32);
    s[1] = (l & 0xffffffff);
}

