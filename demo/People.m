#import "People.h"

@implementation People
-(void) toString{
	NSLog(@"people info, %@, age: %d", name, age);
}
-(void) setName: (NSString *) username
{
	name = username;
}
-(NSString *) getName
{
	return name;
}
-(void) setAge: (int) userage
{
	age = userage;
}
+(void) getInstance
{
	NSLog(@"init ok!");
}
@end;