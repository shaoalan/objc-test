#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSNumber *num = [NSNumber numberWithInteger: 12345];
	NSLog(@"%i", [num integerValue]);
	
	NSNumber *longNum = [NSNumber numberWithLong: 0xababab];
	NSLog(@"%d", [longNum longValue]);
	
	
	
	[pool drain];
	return 0;
}