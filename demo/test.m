#import "People.h"

int main(int argc, char *arg[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	People *p = [[People alloc] init];
	//[p setName: @"shao xianchang"];
	[p setAge: 24];
	[p toString];
	[pool drain];
	return 0;
}