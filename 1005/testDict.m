#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"----------------NSDictionary-----------------");
	NSArray * arr0 = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
	NSArray * arr1 = [NSArray arrayWithObjects: @"1", @"2", @"3", nil];
	
	//NSDictionary *dict = [NSDictionary dictionaryWithObject: @"four" forKey: @"4"];
	//NSDictionary * dict = [[NSDictionary dictionary] initWithObjects: arr0 forKeys: arr1];
	NSDictionary * dict = [[NSDictionary dictionary] initWithObjectsAndKeys: @"one", @"1", @"two", @"2", nil, nil];
	NSLog([dict objectForKey: @"1"]);
	NSLog([[dict allKeys] description]);
	NSEnumerator *num = [dict keyEnumerator];
	for( NSString * p in [num allObjects])
	{
		NSLog(@"key: %@, values:%@", p, [dict objectForKey: p]);
	}
	NSLog([dict description]);
	
	NSLog(@"----------------NSMutableDictionary-----------------");
	NSMutableDictionary *muDict = [[NSMutableDictionary dictionary] initWithCapacity: 20];
	[muDict setDictionary: dict];
	[muDict setObject: @"three" forKey: @"3"];
	[muDict removeObjectForKey: @"1"];
	NSLog([muDict description]);
	[pool drain];
	return 0;
}