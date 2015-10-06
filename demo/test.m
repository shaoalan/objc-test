#import "People.h"

#define APP_NAME @"test programe"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"%@. %d", APP_NAME, argc);
	for(int i=0; i<argc; i++)
	{
		NSLog(@"get param: %s", argv[i]);
	}
	//People *p = [[People alloc] init];
	People *p = [People new];
	NSLog(@"%@", (p == nil));
	[People getInstance];
	[p setName: @"shao xianchang"];
	NSLog(@"%@", [p getName]);
	[p setAge: 24];
	[p toString];
	
	[pool drain];
	return 0;
}