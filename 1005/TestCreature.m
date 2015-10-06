#import <Creature.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Creature *model = [[Creature alloc] init];
	NSLog(@"%d", [model retainCount]);
	[model setName: @"shaoxianchang"];
	[model setHitPoint: 1000];
	[model setMagicPoint: 2000];
	NSLog([model description]);
	[pool drain];
	return 0;
	
}