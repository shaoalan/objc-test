#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSFileManager用法深入
	*/
	
	//获取文件的属性，创建，修改时间等
	NSString *file = @"E:/os/ubuntu/test.txt";
	NSString *path = @"E:/os";
	NSFileManager *manager = [NSFileManager defaultManager];
	NSError *error;
	NSDictionary *dict = [manager attributesOfItemAtPath: file error: &error];
	NSLog([dict description]);
	NSLog([dict objectForKey: @"NSFileOwnerAccountName"]);
	
	//获取指定目录下文件及子目录（包含目录和文件）
	NSArray * subpaths = [manager subpathsAtPath: path];
	NSLog([subpaths description]);
	//NSArray * subdirs = [manager subpathsOfDirectoryAtPath: path error: &error];
	//NSLog([subdirs description]);
	
	//获取指定目录下子目录，不迭代
	subpaths = [manager contentsOfDirectoryAtPath: path error: &error];
	NSLog([subpaths description]);
	
	/*
	目录、文件的创建
	*/
	//创建目录
	//路径名称；如果路径中有个目录不存在，是否创建；路径属性；异常
	NSString *path1 = @"E:/os/test";
	BOOL flag = [manager createDirectoryAtPath: path1 
						withIntermediateDirectories: YES 
						attributes: nil
						error: &error];
	if(flag){
		NSLog(@"create path success: %@", path1);
	} else {
		NSLog(@"create path failed: %@", path1);
	}
	
	//创建文件(可以使用writeToFile)
	NSString *file1 = @"E:/os/test/hello.txt";
	NSString *content = @"测试文件，哈哈。helloworld";
	/*
	文件路径；文件内容NSData类型；
	attributes：文件属性字典
	*/
	flag = [manager createFileAtPath: file1 
						contents: [content dataUsingEncoding: NSUTF8StringEncoding]
						attributes: nil];
	NSLog(@"create file :%d", flag);
	
	//文件copy
	NSString *path2 = @"E:/os/mac/world.txt";
	flag = [manager copyItemAtPath: file1 toPath: path2 error: &error];
	NSLog(@"copy file :%d", flag);

	//文件移动
	NSString *path3 = @"E:/os/mac/world2.txt";
	flag = [manager moveItemAtPath: file1 toPath: path3 error: &error];
	NSLog(@"move file :%d", flag);

	//文件删除
	flag = [manager removeItemAtPath: file1 error: &error];
	NSLog(@"remove file :%d", flag);

	[pool release];
	return 0;
}