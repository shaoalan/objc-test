#import <Foundation/Foundation.h>
#import "MyIssue.h"

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"-------------------test fileManager----------------");
	NSString *path = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1006/block.c";
	NSFileManager *file = [NSFileManager defaultManager];
	NSData *data = [file contentsAtPath: path];
	NSLog([data description]);
	NSLog([[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding]);
	
	[pool drain];
	return 0;
}