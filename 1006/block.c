#include <stdio.h>

int main(void)
{
	void (^b) (int) = ^(int i) {printf("%d\t", i);};
	b(5);
	return 0;
}