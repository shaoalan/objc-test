#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/**
	String的其他用法
		length， characterAtIndex
	转换：
		intValue, floatValue, doubleValue等
	**/
	NSString *str = @"1111";
	NSString *str1 = @"2.55";
	int a = 10;
	
	NSLog(@"%d", a + [str intValue]);
	NSLog(@"%.2f", a + [str1 floatValue]);
	
	//OC和c字符串互转
	//char *  NSString
	char *s = "shaoxianchang";
	printf("s=%s\n", s);
	NSString *str2 = [NSString stringWithUTF8String: s];
	NSLog(str2);
	
	const char * s1 = [str2 UTF8String];
	printf("s1=%s\n", s1);
	
	//去除首位空格
	//stringByTrimmingCharactersInSet
	NSString *str3 = @"   hello world   ";
	
	[pool release];
	return 0;
}