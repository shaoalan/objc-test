#import <Foundation/Foundation.h>

@protocol IssueLocking
@required
-(void) lock;
-(void) unlock;
@optional
-(void) doing;
@end