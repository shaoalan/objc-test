#import "Creature.h"

@implementation Creature
-(NSString *) name
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
	magic = magicPoint;
}
-(NSString *) description
{
	return @"Creature=[name: %@, hitPoint: %@, magicPoint: %@"
}
@end