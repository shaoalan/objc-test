#import "RGB.h"

int main (int argc, const char *argv[])
{
	RGB *u, *w;
	u = [[RGB alloc] initWithRed: 255 green: 127 blue: 127];
	w = [[RGB alloc] initWithRed: 0 green: 127 blue: 64];
	[u print];
	[w print];
	[[u blendColor: w] print];
	
	printf("%d", sizeof(u));
	
	return 0;
}