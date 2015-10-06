#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSString * path = @"http://openapi.baidu.com/public/2.0/bmt/translate?client_id=mqB9TeQ0TI2EeKqUdujvQ24i&q=世界&from=auto&to=auto";
	path = [path stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
	NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
	[request setURL:[NSURL URLWithString: path]];
	[request setCachePolicy:NSURLRequestReloadIgnoringCacheData];
	[request setTimeoutInterval: 60];
	[request setHTTPShouldHandleCookies:FALSE];
	[request setHTTPMethod:@"GET"];
	NSHTTPURLResponse *response;
    NSData *returnData = [NSURLConnection sendSynchronousRequest:request
                                               returningResponse:&response error:nil];
	NSString *strReturn = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",strReturn);
    NSLog(@"%d",[response statusCode]);
	[request release];
    [strReturn release];



	
	[pool drain];
	return 0;
}