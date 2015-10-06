#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"------------------testBlock-----------------");
	int k = 10;
	void (^b)(void) = ^(void) {printf("%s,", "hello");};
	
	b();
	
	
	
	[pool drain];
	return 0;
}