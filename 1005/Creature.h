#import <Foundation/Foundation.h>

@interface Creature: NSObject
{
	NSString *name;
	int hitPoint;
	int magicPoint;
}
/*-(NSString *) name;
-(void) setName: (NSString *) myName;
-(int) hitPoint;
-(void) setHitPoint: (int) hit;
-(int) magicPoint;
-(void) setMagicPoint: (int) magic; 
*/
@property(assign) NSString *name;
@property(assign) int hitPoint;
@property(assign) int magicPoint;
-(NSString *) description;
@end