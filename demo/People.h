#import <Foundation/Foundation.h>

@interface People: NSObject{
	NSString *name;
	int age;
}

-(void) toString;
-(void) setName: (NSString *) username;
-(NSString *) getName;
-(void) setAge: (int) userage;
+(void) getInstance;
@end;