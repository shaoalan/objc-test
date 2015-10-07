#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	可变数组NSMutableArray
	创建：
		1、array
		2、arrayWithObject
		3、arrayWithObjects
		....
	注意：
		1、不可以用@[]初始化数组，这个是不可变的
	*/
	NSMutableArray * array = [NSMutableArray arrayWithObjects: @"one", @"two", @"three", nil];
	[array addObject: @"four"];
	[array insertObject: @"five" atIndex: [array count]];
	[array removeObject: @"four"];
	[array removeObjectAtIndex: 0];
	//[array removeAllObjects];
	[array replaceObjectAtIndex: 0 withObject: @"1"];
	
	NSLog([array description]);
	
	[pool release];
	return 0;
}