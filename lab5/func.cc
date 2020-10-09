int setBit(int a, int b)
{
  int num=1<<b;
  return a|num;
}
int clearBit(int a, int b)
{
  int num=1<<b;
  num=num&0xFFFFFFFF;
  return a&num;
}
int flip(int a, int b)
{
  int num=1<<b;
  return a^num;
}
int replaceBits(int a, int b, int c)
{
  a=a&b;
  return a|c;
}
int buildColor(int r, int g, int b)
{
  r<<16;
  g<<8;
  return r|g|b;
}
double choose(int n, int r)
{
  double x=1, y=1;
  for(int i=r+1; r<=n; i++)
    {
      x*=i;
    }
  for(int i=2; i<=n-r; i++)
    {
      y*=i;
    }
  return x/y;
}
