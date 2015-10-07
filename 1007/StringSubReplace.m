#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	字符串的截取
	substringToIndex，从开始到index
	substringFromIndex， 从index到结束
	substringWithRange，截取一个范围
	*/
	NSString *str = @"1234235345346546";
	NSLog([str substringToIndex: 3]);
	NSLog([str substringFromIndex: 3]);
	
	NSRange range = {4, 5};
	NSLog([str substringFromRange: range]);
	NSLog([str substringWithRange: range]);
	
	NSString *str1 = @"<item>book</item>";
	NSUInteger loc = [str1 rangeOfString:@">"].location+1;
	NSUInteger len = [str1 rangeOfString:@"</"].location-loc;
	NSRange range1 = {loc, len};
	NSLog([str1 substringWithRange: range1]);
	
	/*
	字符串的替换
	stringByReplacingOccurrencesOfString: withString
	
	*/
	NSString *str2 = @"adfadfljkjladfjlk";
	NSLog([str2 stringByReplacingOccurrencesOfString: @"adf" withString: @"111"]);
	
	
	[pool release];
	return 0;
}