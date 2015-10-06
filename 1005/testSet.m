#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"----------------NSSet-----------------");
	NSArray * arr = [NSArray arrayWithObjects: @"one", @"two", @"three", @"one", nil];
	NSSet * set = [[NSSet alloc] initWithArray: arr];
	NSLog(@"%d", [set containsObject: @"one"]);
	
	NSLog(@"count:%d, info:%@", [set count], [[set allObjects] componentsJoinedByString: @";"]);
	
	NSMutableSet * set1 = [[NSMutableSet alloc] initWithCapacity: 10];
	[set1 addObject: @"1"];
	[set1 addObject: @"2"];
	[set1 addObject: @"3"];
	[set1 removeObject: @"2"];
	[set1 unionSet: set];
	NSLog([set1 description]);
	
	[pool drain];
	return 0;
}