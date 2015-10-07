#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/**
	字符串的前后缀检查
	hasPrefix, hasSuffix
	
	**/
	NSString *url = @"http://www.baidu.com";
	NSLog(@"%d", [url hasPrefix: @"http"]);
	NSLog(@"%d", [url hasSuffix: @"com"]);
	
	/*******
	字符串的查找
	1、查找字符串在另一个首次出现的位置
	rangeOfString 返回结构体类型NSRange不需加*，
	查找不到location返回一个大数（NSNotFound=NSIntegerMax），length返回0
	********/
	NSString *str1 = @"asdfadsfasdbaidu";
	NSString *str2 = @"baidua";
	NSRange range = [str1 rangeOfString: str2];
	NSLog(@"location:%lu, length:%lu", range.location, range.length);
	NSLog(@"%lu", NSNotFound);
	[pool release];
	return 0;
}