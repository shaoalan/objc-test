#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	基本类型包装对象
	
	*/
	int a = 100;
	float b =22.454;
	double c = 23423423.234234234234;
	
	/*
	进行包装
	*/
	NSNumber *intObj = [NSNumber numberWithInteger: a];
	NSLog(@"%@", intObj);
	
	NSNumber *floatObj = [NSNumber numberWithFloat: b];
	NSLog(@"%@", floatObj);
	
	NSNumber *doubleObj = [NSNumber numberWithDouble: c];
	NSLog(@"%@", doubleObj);
	
	/*
	拆箱操作
	*/
	int d = [intObj intValue];
	printf("%d\n", d);
	
	float e = [floatObj floatValue];
	printf("%.2f\n", e);
	
	double f = [doubleObj doubleValue];
	printf("%.2f\n", f);
	
	//NSArray * array = [NSArray arrayWithObject: @34];
	NSLog([array description]);
	
	[pool drain];
	return 0;
}