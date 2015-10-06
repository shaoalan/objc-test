#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSString *str = [NSString stringWithFormat: @"hello world"];
	NSString *str1 = @"hello world";
	NSLog(str);
	NSLog(@"lenght:%d, one:%c", [str length], [str characterAtIndex: 0]);
	NSLog(@"%d", [str isEqualToString: str1]);
	NSLog(@"%d", [str hasPrefix: @"hel"]);
	NSLog([str stringByAppendingString: @"!"]);
	NSLog([str stringByAppendingFormat: @"!%d", 2]);
	
	NSLog(@"---------------------------------");
	NSLog([str substringToIndex: 5]);
	NSLog([str substringFromIndex: 5]);
	NSRange range = [str rangeOfString :@"wo"];
	NSLog(@"%d", range.length);
	NSLog([str stringByReplacingOccurrencesOfString: @"ld" withString: @"ld!"]);
	NSLog(@"%@, %@, %@", [str lowercaseString], [str uppercaseString], [str capitalizedString]);
	NSLog(@"%d, %d, %d", [str floatValue], YES, NO);
	NSLog([str description]);
	
	NSLog(@"--------------file path----------------");
	NSString *path = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1005/test.txt";
	NSLog(@"%@", [path lastPathComponent]);
	NSLog(@"%@",[path stringByDeletingLastPathComponent]);
	NSLog(@"%@",[path pathExtension]);
	NSLog(@"%@",[path stringByDeletingPathExtension]);
	NSLog(@"%d",[path isAbsolutePath]);
	NSArray *paths = [path pathComponents];
	for(NSString * p in paths)
	{
		NSLog(@"path:%@", p);
	}
	
	/*NSLog(@"--------------file operate----------------");
	NSError * err = [[NSError alloc] init];
	NSUTF8StringEncoding *code = [[NSUTF8StringEncoding alloc] init];
	id file = [NSString stringWithContentsOfFile: path encoding: code error: *err];
	NSLog([file description]);
	*/
	
	NSLog(@"------------------mutable string--------------");
	NSMutableString *str2 = [NSMutableString stringWithCapacity: 10];
	[str2 appendString: @"one"];
	[str2 appendFormat: @" two"];
	[str2 insertString: @"..." atIndex: 0];
	[str2 setString: @"on two three"];
	//[str2 replaceOccurrencesOfString: @"two", withString: @"2" options: nil range: nil];
	
	NSLog(str2);
	
	[pool drain];
	return 0;
}