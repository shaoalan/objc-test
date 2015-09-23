#import "People.h"

@implementation People
-(void) toString{
	NSLog(@"people info, age: %d", age);
}
/*-(void) setName: (NSString) *username
{
	*name = *username;
}*/

-(void) setAge: (int) userage
{
	age = userage;
}
@end;