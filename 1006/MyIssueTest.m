#import <Foundation/Foundation.h>
#import "MyIssue.h"

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	MyIssue *issue = [[MyIssue alloc] init];
	[issue lock];
	[issue handleIssue];
	[issue unlock];
	//[issue doing];
	NSLog(@"%d", [issue conformsToProtocol: @protocol(IssueLocking)]);
	NSLog(@"%d", [@"hello" conformsToProtocol: @protocol(NSObject)]);
	[pool drain];
	return 0;
}