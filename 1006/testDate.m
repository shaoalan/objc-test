#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
   	
   	NSLog(@"------------------NSDate----------------");
	NSDate *date = [NSDate date];
	NSLog([date description]);
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat: @"HH:mm"];
	NSLog(@"formatter:%@", [formatter stringFromDate: date]);
	NSLog(@"%d", sizeof(int));
	
	NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
	NSLog(@"date: %d", (long long int) time);
	
	NSLog(@"------------------NSString----------------""end");
	NSLog([NSString stringWithUTF8String: "你好"]);
	NSRange range = {5, 10};
    [pool drain];
    return 0;
}
