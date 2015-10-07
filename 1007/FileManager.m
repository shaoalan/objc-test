#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSFileManager文件管理
	使用单例模式
	创建：
		[NSFileManager defaultManager]
	
	方法：
		1、判断文件是否存在
		2、判断是否是一个目录
		3、判断文件是否可读
		4、判断可写
		5、是否可删除
	*/
	NSFileManager *manager = [NSFileManager defaultManager];
	NSString *file = @"D:/test.txt";
	NSString *path = @"C:/PerfLogs";
	
	//1、判断文件是否存在
	BOOL isExist = [manager fileExistsAtPath: file];
	NSLog(@"fileExists:%d", isExist);
	
	BOOL isDir;
	//2、判断是否是一个目录
	[manager fileExistsAtPath: path isDirectory: &isDir];
	NSLog(@"pathExists:%d", isDir);
	
	//3、判断文件是否可读
	NSLog(@"can read:%d", [manager isReadableFileAtPath: path]);
	
	//4、判断可写
	NSLog(@"can write:%d", [manager isWritableFileAtPath: path]);
	
	//5、是否可删除
	NSLog(@"can delete:%d", [manager isDeletableFileAtPath: path]);
	
	[pool release];
	return 0;
}