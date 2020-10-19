main()
{
    int s[2];

    emul(2, 3, 4, s);
    printf("%d %d\n", s[0], s[1]);
    emul(0, 0, -6, s);
    printf("%d %d\n", s[0], s[1]);
    emul(65535, 65535, 2*65536, s);
    printf("%d %d\n", s[0], s[1]);
    emul(30303030, 44444444, 42, s);
    printf("%d %d\n", s[0], s[1]);
    printf("ediv returns %d\n", ediv(s, 66666666, (char *)0));
    printf("%d %d\n", s[0], s[1]);
}
