#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	字符串的比较：
	返回结果三种：NSOrderedAscending, NSOrderedSame, NSOrderedDescending
	-1， 0， 1
	compare方法，可以加参数Options
	*/
	NSString *str1 = @"abc";
	NSString *str2 = @"Abc";
	NSString *str3 = [NSString stringWithFormat: @"abc"];
	NSString *str4 = [[NSString alloc] initWithFormat: @"Abc"];
	//利用compare方法比较，返回的是枚举类型，不用加*
	//compare方法区分大小写
	//NSCaseInsensitiveSearch参数不区分大小写
	//NSNumericSearch根据个数进行比较，个数多，就大
	//NSComparisonResult result = [str1 compare: str2];
	NSComparisonResult result = [str1 compare: str2 
									  options: NSCaseInsensitiveSearch | NSNumericSearch];
	switch ( result ) {
		case NSOrderedAscending:
			NSLog(@"str1 < str2");
			break;
		case NSOrderedSame:
			NSLog(@"str1 = str2");
			break;
		case NSOrderedDescending:
			NSLog(@"str1 > str2");
			break;
		default :
			break;
	}
	
	//用==来判断字符串相等，这个是地址判断，@""保存在常量区，而构造出来的在堆区
	NSLog(@"%d", str1 == str3);
	NSLog(@"%d", str1 == str4);
	
	//panda你字符串相等可以用isEqualToString方法
	NSLog(@"%d", [str1 isEqualToString: str3]);
	NSLog(@"%d", [str1 isEqualToString: str4]);
	
	[pool drain];
	return 0;
}