#import <Foundation/Foundation.h>

@interface Dog: NSObject{
	NSString *name;
}
/*
@property 
	原子性： atomic属性加锁，线程安全，默认/nonatomic线程不安全，速度快
	读写属性：readwrite：默认，生成get、set方法
			 readonly：只生成get方法
	set方法处理：
			assign：直接赋值，默认
			retain：先release原来的值，在retain新值
			copy：先release原来值，再copy新值
*/
@property(assign, readwrite) NSString *name;
-(void) eat;
-(void) setDog: (Dog *) dog;
@end

@implementation Dog
@synthesize name;
-(void) eat {
	NSLog(@"dog(%@) is eating.", name);
}
-(void) setDog: (Dog *) dog {
	[dog retain];
}
-(void) dealloc{
	NSLog(@"dog is dead.");
	[super dealloc];
}
@end

@interface People: NSObject{
	NSString *name;
	Dog * dog;
	BOOL vip;
}
@property(assign) NSString *name;
@property(retain) Dog * dog;
@property(assign, nonatomic, setter = setVip:, getter = isVip) BOOL vip;
-(void) runDog;
@end

@implementation People
@synthesize name;
@synthesize dog;
@synthesize vip;
-(void) runDog{
	NSLog(@"%@ is running dog", self.name);
}
-(void) dealloc{
	[dog release];
	NSLog(@"people is dead.");
	[super dealloc];
}
@end

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	内存管理：
		如果对象不使用了，就应该回收，防止内存泄漏
		
	管理范围：
		所有继承了NSObject对象
		基本数据类型int double float char struct enum不需要管理
		
	管理原则：
		一、s
			如果对象有使用，不应该回收
			如果需要使用，则retain
			如果不适用，就release
		二、
			谁创建谁release
		三、
			谁retain，谁release
		
	内存管理研究内容：
		1）野指针：定义的指针变量没有初始化；指向的空间已经被释放
		2）内存泄漏：
			Dog *dog = [Dog new];
			dog在栈区，[Dog new]在堆区，如果堆区被释放，会造成内存泄漏
	
	
	注意：
		1）空指针，没有任何东西的指针，给空指针发送消息不会报错
		2）nil,NIL和NULL区别
			nil：A null pointer to an objc object 实例对象
			Nil: A null pointer to an objc class 类对象
			NULL: A null pointer to anything else
			
			[NSNull null]
	*/
	Dog *dog = [Dog new];
	dog.name = @"hello";
	[dog eat];
	People *p = [People new];
	p.name = @"shao";
	//p.vip = YES;
	[p setVip: YES];
	if([p isVip]){
		NSLog(@"people is vip");
	}
	p.dog = dog;
	NSLog(@"dog count: %lu", dog.retainCount);
	[p runDog];
	
	/*Dog *dog1 = [Dog new];
	p.dog = dog1;
	NSLog(@"%@", p.dog);*/
	
	NSLog(@"dog count: %lu", dog.retainCount);
	NSLog(@"people count: %lu", p.retainCount);
	[dog release];
	[p runDog];
	[p setDog: dog];
	[p release];
	
	/*NSLog(@"%lu", [dog retainCount]);
	[dog setDog: dog];
	NSLog(@"%lu", [dog retainCount]);*/
	
	[pool drain];
	return 0;
}