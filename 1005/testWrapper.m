#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"---------------NSNumber-------------");
	NSNumber *num = [NSNumber numberWithInteger: 10];
	NSLog(@"%d", [num intValue]);
	NSNumber *num1 = [NSNumber numberWithBool: YES];
	NSLog(@"%d", [num1 boolValue]);
	NSNumber *num2 = [NSNumber numberWithChar: 'A'];
	NSLog(@"%c", [num2 charValue]);
	NSNumber *num3 = [NSNumber numberWithDouble: 23423.423423];
	NSLog(@"%d", [num3 doubleValue]);
	NSNumber *num4 = [NSNumber numberWithFloat: 90909.004];
	NSLog(@"%f", [num4 floatValue]);
	NSNumber *num5 = [NSNumber numberWithLongLong: 46546464575675668];
	NSLog(@"%ld", [num5 longLongValue]);
	
	NSLog([[NSNull null] description]);
	
	[pool drain];
	return 0;
}