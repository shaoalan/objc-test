#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	沙盒包含：
		应用程序包
		Documents	持久化数据
		tmp			临时目录
		Library
			cache	缓存
			Prefrences	配置信息、SQLite
	*/
	//沙盒根目录
	NSLog(NSHomeDirectory());
	
	//Documents目录
	//参数：1、获取沙盒文件夹名称NSDocumentDirectory
	//2、一个范围，常用用户主目录下查找NSUserDomainMask
	//3、是否全路径
	NSArray *paths = NSSearchPathForDirectoriesInDomains(
		NSDocumentDirectory,
		NSUserDomainMask,
		YES
	);
	NSLog([paths description]);
	
	[pool drain];
	return 0;
}