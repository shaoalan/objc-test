#import <Foundation/Foundation.h>

typedef struct D{
	int year;
	int month;
	int day;
} MyDate;

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSValue使用
	NSNumber是NSValue子类，用来把指针、结构体等包装成对象，以便存储
	valueWithPoint,valueWithSize,valueWithRect
	*/
	NSPoint point = NSMakePoint(34, 45);
	NSValue *value = [NSValue valueWithPoint: point];
	NSLog(NSStringFromPoint([value pointValue]));
	
	//处理一个自定义结构体
	MyDate md = {2015, 10, 8};
	//@encode(MyDate) 把MyDate类型生成一个常量字符串
	NSValue *mdValue = [NSValue valueWithBytes: &md
				objCType: @encode(MyDate)];
	NSLog(@"%s", @encode(MyDate));
	
	//从NSValue中取出结构体
	MyDate tmd;
	[mdValue getValue: &tmd];
	NSLog(@"%d, %d, %d", tmd.year, tmd.month, tmd.day);
	
	NSMutableArray *arr = [NSMutableArray arrayWithObject: mdValue];
	NSLog([arr description]);
	
	[pool drain];
	return 0;
}