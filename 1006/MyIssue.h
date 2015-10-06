#import <Foundation/Foundation.h>
#import "IssueLocking.h"

@interface MyIssue: NSObject <IssueLocking>
-(void) handleIssue;
@end