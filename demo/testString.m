#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSString *name = [NSString stringWithFormat:@"I am %@", @"shao xianchang"];
	NSString *str0 = [NSString stringWithString:@"shao xianchang"];
	NSString *str1 = [NSString stringWithUTF8String:"你好啊！"];
	NSLog(name);
	NSLog(str0);
	NSLog(str1);
	
	NSLog([str0 substringToIndex: 2]);
	NSLog([str0 substringFromIndex: 2]);
	NSLog([str0 capitalizedString]);
	NSLog([str0 uppercaseString]);
	
	NSArray *array = [NSArray arrayWithObjects:@"one", @"two", nil];
	[array arrayByAddingObject:@"three"];
	NSLog(@"array:%@, count: %d, 1->%@", array, [array count], [array objectAtIndex:1]);
	NSLog(@"join array:%@", [array componentsJoinedByString:@"~"]);
	NSLog(@"isContain:%d", [array containsObject:@"two"]);
	NSLog(@"indexOfObject:%d", [array indexOfObject:@"two"]);
	NSLog(@"last object: %@", [array lastObject]);
	
	for(id e in array)
	{
		NSLog(@"array:%@", e);
	}
	
	//可变数组
	NSMutableArray *mArray = [NSMutableArray arrayWithCapacity: 5];
	[mArray addObject:@"1"];
	[mArray addObject:@"2"];
	[mArray addObject:@"3"];
	[mArray insertObject:@ "4" atIndex: 2];
	[mArray removeObject:@ "1"];
	NSLog(@"muArray, count:%d, :%@", [mArray count], mArray);
	//[mArray removeObjectAtIndex:0];
	
	
	/*for(int i=0; i < count; i++)
	{
		char c = [name characterAtIndex: i];
		NSLog(@"字符串%d位为%c", i, c);
	}*/
	[pool drain];
}