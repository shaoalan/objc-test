#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSString *str = @"hello\n";
	NSString *file = @"D:/ProgramFiles/GNUstep/msys/1.0/home/shaoa/1007/test.txt";
	NSError * err;
	
	//字符串写入到文件
	[str writeToFile: file
		  atomically: YES 
		    encoding: NSUTF8StringEncoding 
			   error: &err];
	if(err != nil)
	{
		NSLog(@"write file successful");
	} else 
	{
		NSLog(@"write file failed");
	}
	
	//从文件中读取字符串
	NSString *str2 = [NSString stringWithContentsOfFile: file
										       encoding: NSUTF8StringEncoding
										          error: &err];
	NSLog(@"get file : %@", str2);
	[pool drain];
	return 0;
}