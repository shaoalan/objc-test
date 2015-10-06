#import "MyIssue.h"

@implementation MyIssue
-(void) handleIssue
{
	NSLog(@"enter issue handle...");
}

-(void) lock
{
	NSLog(@"lock issue");
}

-(void) unlock
{
	NSLog(@"unlock issue");
}

@end