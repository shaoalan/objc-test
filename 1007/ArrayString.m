#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	数组和字符串的转换
		1:componentsJoinedByString:
		2:componentsSeparatedByString
	*/
	NSArray * arr = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
	NSString *str = [arr componentsJoinedByString: @";"];
	NSLog(str);
	
	NSLog([[str componentsSeparatedByString: @";"] description]);
	
	
	[pool release];
	return 0;
}