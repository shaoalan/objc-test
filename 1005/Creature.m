#import "Creature.h"

@implementation Creature
/*-(NSString *) name
{
	return name;
}
-(void) setName: (NSString *) myName
{
	name = myName;
}
-(int) hitPoint
{
	return hitPoint;
}
-(void) setHitPoint: (int) hit
{
	hitPoint = hit;
}
-(int) magicPoint
{
	return magicPoint;
}
-(void) setMagicPoint: (int) magic
{
	magicPoint = magic;
}
*/
@synthesize name;
@synthesize hitPoint;
@synthesize magicPoint;
-(NSString *) description
{
	//return @"dddd";
	return [NSString stringWithFormat: @"Creature=[name: %@, hitPoint: %d, magicPoint: %d]", self.name, self.hitPoint, self.magicPoint];
}
@end