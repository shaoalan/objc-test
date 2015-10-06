#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"--------test NSData-------------------");
	NSData *data = [[NSData alloc] initWithBytes: "nihaoaaaaaaaaaa" length: 10];
	
	NSLog(@"%d, %@", [data length], [data description]);
	
	NSLog(@"--------test NSArray-------------------");
	NSArray * arr = [NSArray arrayWithObject: @"one"];
	NSLog(@"count:%d, object0:%d, index0:%@, last:%@", [arr count], 
		[arr indexOfObject: @"one"], [arr objectAtIndex: 0], [arr lastObject]);
	NSLog([[arr arrayByAddingObject: @"two"] description]);
	NSLog([[arr arrayByAddingObjectsFromArray: arr] description]);
	//NSString *path = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1005/test.txt";
	//[arr writeToFile: path atomically: YES];
	NSArray * arr1 = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
	NSLog([arr1 componentsJoinedByString: @";"])
	NSLog([arr1 description]);
	
	[pool release];
}