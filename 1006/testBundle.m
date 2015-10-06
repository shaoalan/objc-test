#import <Foundation/Foundation.h>
#import "MyIssue.h"

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"------------------test bundle---------------");
	//NSString * path = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1006";
	//NSBundle * bundle = [NSBundle bundleWithPath: path];
	NSBundle * bundle = [NSBundle mainBundle];
	NSLog([bundle pathForResource: @"logo" ofType: @"png"]);
	NSLog([bundle description]);
	@try{
		NSString *str = [[NSString alloc] init];
		NSLog([str substringToIndex: 5]);
	}
	@catch (NSException *e) {
		NSLog(@"sorry, exception, name: %@,\n reason: %@\n, userInfo: %@", e.name, e.reason, [e.userInfo description]);
	}
	
	[pool drain];
	return 0;
}