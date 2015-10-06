#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSMutableArray * arr = [NSMutableArray arrayWithCapacity: 10];
	[arr addObject: @"one"];
	[arr addObject: @"two"];
	[arr addObject: @"three"];
	NSArray * arr1 = [NSArray arrayWithObject: @"hello"];
	[arr addObjectsFromArray: arr1];
	[arr insertObject: @"four" atIndex: 4];
	[arr replaceObjectAtIndex: 3 withObject: @"and"];
	//[arr setArray: arr1];
	[arr replaceObjectAtIndex: 3 withObject: @"@"];
	[arr exchangeObjectAtIndex: 3 withObjectAtIndex :0];
	//[arr removeAllObjects];
	[arr removeLastObject];
	[arr removeObjectAtIndex: 0];
	[arr removeObject: @"one"];
	NSLog(@"-----------------------------------");
	[arr removeAllObjects];
	[arr addObject: @"5656"];
	[arr addObject: @"1222"];
	[arr addObject: @"23423"];
	[arr addObject: @"9"];
	[arr addObject: @"455"];
	NSLog([arr objectAtIndex: 0]);
	NSLog(@"count:%d, info:%@", [arr count], [arr description]);
	
	[pool drain];
	return 0;
}