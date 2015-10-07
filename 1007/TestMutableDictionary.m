#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSMutableDictionary： 可变字典
	创建：
		1、dictionary 空字典
		2、...
	常见方法：
		1、增加
		2、删除
		3、修改
		4、查找
	*/
	NSMutableDictionary *dict = [NSMutableDictionary dictionary];
	dict = [NSMutableDictionary dictionaryWithCapacity: 10];
	[dict setValue: @"one" forKey: @"1"];
	[dict setValue: @"two" forKey: @"2"];
	[dict setValue: @"three" forKey: @"3"];
	[dict setValue: @"four" forKey: @"4"];
	[dict setValue: @"five" forKey: @"5"];
	
	[dict removeObjectForKey: @"1"];
	//[dict removeAllObjects];
	[dict setObject: @"five5" forKey: @"5"];
	NSArray *array = [dict allKeys];
	NSLog([array description]);
	NSLog([dict description]);
	
	
	[pool release];
	return 0;
}