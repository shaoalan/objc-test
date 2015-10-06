#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"-----------------NSURL-----------------");
	NSURL *url = [NSURL URLWithString: @"http://www.baidu.com"];
	
	NSLog([url description]);
	NSLog([url performSelector: @selector(absoluteString)]);
	NSLog(@"%d", [url respondsToSelector: @selector(length)]);
	NSLog(@"%d,\n%@\n%@", [url isFileURL], [url baseURL], [url absoluteString]);
	NSLog([[[NSURL alloc] initWithString: @"/index.jsp" relativeToURL: url] description]);
	
	NSLog(@"-----------------IMP-----------------");
	IMP path = [url methodForSelector: @selector(absoluteString)];
	NSLog((*path) (url, @selector(absoluteString:)));
	
	[pool drain];
	return 0;
}