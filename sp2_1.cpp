#include <stdio.h>
int main() {
        int  a[10]={4,-2,-6,9,12,-7,2,-9,1,5};
        int sum =0;
        int i;
        for(i=0;i<10;i++)
        {
                if(a[i]>0)
                {
                        sum+=a[i];
                }
                else
                {
                        a[i]*=-1;
                        sum+=a[i];
                }
        }
        printf ("%d",sum);
        return 0;
}
