#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSDictionary字典
	创建：
		1、NSDictionary dictionary空字典，不可变无意义
		2、dictionaryWithObject：forKey:键值对创建
		3、dictionaryWithObjectsAndKeys:键值对对应出现，nil结尾
		4、快速创建@{value: key, xxx}
	*/
	NSDictionary *dict = [NSDictionary dictionaryWithObject: @"one" forKey: @"1"];
	
	NSLog([dict description]);
	
	NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys: @"one" ,@"1", @"two", @"2", nil];
	
	NSLog([dict1 description]);
	
	/*
	常用方法：
		1、count
		2、objectForKey
		
	*/
	NSLog([dict1 objectForKey: @"1"]);
	
	/*
	遍历：
	1、普通遍历
	2、for in
	3、block
	*/
	
	for(NSString *key in dict1) {
		NSLog(@"key=%@, value=%@", key, [dict1 objectForKey: key]);
	}
	
	/*[dict1 enumerateKeysAndObjectsUsingBlock: ^(id key, id obj, BOOL *stop){
		
	}]*/
	
	
	/*
	字典的文件操作
		1、writeToFile
		2、dictionaryWithContentsOfFile
	*/
	NSString *file = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1007/array.plist";
	BOOL result = [dict1 writeToFile: file atomically: YES];
	if(result) {
		NSLog(@"write ok");
	}
	
	NSDictionary *dict2 = [NSDictionary dictionaryWithContentsOfFile: file];
	NSLog([dict2 description]);
	
	
	
	[pool release];
	return 0;
}