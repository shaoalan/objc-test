#import <Foundation/Foundation.h>

int add(int a, int b);

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"Test 2015-09-25");
	BOOL flag = YES;
	NSLog(@"%d", flag);
	NSLog(@"%d", add(5, 999));
	
	NSDate *date = [[NSDate alloc] init];
	NSLog(@"%@", date);
	NSDateFormatter * dFormatter = [[NSDateFormatter alloc] init];
	[dFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	NSLog(@"%@", [dFormatter stringFromDate:date]);
	
	[pool drain];
}

int add(int a, int b)
{
	//NSLog(@"%d,%d", a, b);
	return (a + b);
}