#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/**
	NSRange一个结构体，表示一个范围和长度
	NSUInteger location, NSUInteger length
	NSRange的创建方式
	**/
	
	//用结构体方式进行创建
	NSRange range;
	range.location = 5;
	range.length = 10;
	range = (NSRange) {5,9};	//还可以这样赋值
	NSLog(@"location:%lu, length:%lu", range.location, range.length);
	
	//结构体变量整体赋值
	NSRange range2 =  {3, 12};
	NSLog(@"location:%lu, length:%lu", range2.location, range2.length);
	
	NSRange range3 = {.location = 44};
	NSLog(@"location:%lu, length:%lu", range3.location, range3.length);
	
	/*
	上面使用c的结构体方式赋值，现在用oc的方式
	*/
	NSRange range4 = NSMakeRange(4, 9);
	NSLog(@"location:%lu, length:%lu", range4.location, range4.length);
	
	//在对NSRange输出的时候，可以转换成NSString
	NSLog(NSStringFromRange(range4));
	[pool release];
	return 0;
}