#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	常用结构体
	CG：用于与绘图
	NSPoint,CGPoint(CGFloat x, CGFloat y)
	NSSize,CGSize
	NSRect,CGRect
	
	*/
	NSPoint point = {10, 100};
	point = NSMakePoint(200, 320);
	NSLog(@"x=%.2f, y=%.2f", point.x, point.y);
	NSLog(NSStringFromPoint(point));
	
	//CGPoint p = {100, 200};
	//NSLog(@"x=%d, y=%d", p.x, p.y);
	
	NSSize size = {320, 240};
	size = NSMakeSize(800, 640);
	NSLog(@"width=%.2f, height=%.2f", size.width, size.height);
	NSLog(NSStringFromSize(size));
	
	NSRect rect;
	rect.origin.x = 10;
	rect.origin.y = 10;
	rect.size.width = 1000;
	rect.size.height = 800;
	
	//rect = {{0, 0},{100, 200}};
	rect = NSMakeRect(0, 0, 100, 200);
	NSLog(@"x=%.2f, y=%.2f, width=%.2f, height=%.2f", 
		rect.origin.x, rect.origin.y,
		rect.size.width, rect.size.height);
	NSLog(NSStringFromRect(rect));
	
	[pool drain];
	return 0;
}