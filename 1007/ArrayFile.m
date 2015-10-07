#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSArray文件读写
		1、writeToFile: atomically:
		2、arrayWithContentsOfFile:
	*/
	NSArray * arr = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
	NSString *file = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1007/array.plist";
	BOOL isOk = [arr writeToFile: file atomically: YES];
	if (isOk) {
		NSLog(@"write ok");
	}
	
	NSArray * arr1 = [NSArray arrayWithContentsOfFile: file];
	NSLog([arr1 description]);
	
	
	
	
	[pool release];
	return 0;
}