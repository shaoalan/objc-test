#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSArray：OC不可变数组
	特点：
		1、只能存放任意的OC对象，不能存储非oc对象，基本类型
		2、有序的
		3、不可更改
	构造：
		1、array+
		2、arrayWithObject+
		3、arrayWithObjects+
		4、alloc initxxx方法
		5、arrayWithArray+
		...
		注意：nil是数组的结束标识，如果要插入空可以用NSNull null
	*/
	NSArray *array = [NSArray arrayWithObjects: @"HELLO", [NSNull null], @"world", nil];
	
	/*
	常用方法：
		1、count  （c语言： sizeof(arr)/sizeof(int)）
		2、objectAtIndex: NSUInteger index:
		3、containsObject:
		4、lastObject
		5、indexOfObject
		6...
	*/
	NSLog(@"count=%d", [array count]);
	NSLog(@"%@", [array objectAtIndex: 2]);
	NSLog(@"%d", [array containsObject: @"HELLO"]);
	NSLog(@"%d", [array indexOfObject: @"HELLO"]);
	NSLog(@"last=%@", [array lastObject]);
	NSLog([array description]);
	//NSLog(@"..%@", array[1]);
	
	/*
	数组元素的访问：
		1、普通for遍历
		2、枚举法， for in
		3、使用block方式
	*/
	for(NSString *a in array){
		NSLog(@"%@", a);
	}
	
	//使用block方式
	//三个参数：元素，下标，是否停止
	/*[array enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop){
		NSLog(@"idx=%ld, obj=%@", idx, obj);
	}];*/
	
	/*
	简化方式定义和访问数组
		@[];
		arr[index];
	*/
	/*NSArray * arr = @[@"one", @"two", @"three"];
	NSLog([arr description]);*/
	[pool release];
	return 0;
}