#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSMutableString：可变字符串，继承NSString，可以使用其所有方法
	注意：
		1、用@""进行可变字符串赋值的时候，是不可以更改的
		2、包含对象string eg:str.string=@""
		3、开发中常用NSString
		4、枚举中的位枚举：2的次方
	*/
	NSString *str = @"a";
	NSLog(@"%p", str);
	str = @"b";
	NSLog(@"%p", str);
	
	NSMutableString *str1 = [NSMutableString stringWithFormat: @"abc"];
	NSLog(@"%p", str1);
	[str1 appendString: @"."];
	NSLog(@"%p", str1);
	
	/*
	常用的方法：
		appendString：增加字符串
		appendFormat
		deleteCharactersInRange
		insertString: atIndex: 
		replaceCharactersInRange: withString:
		
	*/
	NSMutableString *str3 = [NSMutableString string];
	[str3 appendFormat: @"hello%@",  @" world"];
	NSRange range = {0, 2};
	[str3 deleteCharactersInRange: range];
	[str3 insertString: @"@" atIndex: 0];
	[str3 replaceCharactersInRange: NSMakeRange(0,0) withString: @"begin"];
	NSLog(str3);
	
	[pool release];
	return 0;
}