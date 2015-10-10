#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	/*
	NSDate的使用
	1、获取当前时间
	2、格式化显示时间
	3、计算时间
	*/
	NSDate *date = [NSDate date];
	NSLog(@"%@", date);
	
	//时区
	/*NSTimeZone *zone = [NSTimeZone systemTimeZone];
	NSInteger interval = [zone secondsFromGMTForDate: date];
	NSDate * locale = [date dateByAddingTimeInterval: interval];
	NSLog(@"%@", locale);*/
	
	//格式化日期
	NSDateFormatter *formatter = [NSDateFormatter new];
	formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
	NSLog([formatter stringFromDate: date]);
	
	//计算日期
	NSTimeInterval t = 60*60*24;  //double类型
	NSDate *date1 = [NSDate dateWithTimeIntervalSinceNow: t];
	NSLog([formatter stringFromDate: date1]);
	
	NSDate *date2 = [[NSDate date] addTimeInterval: -t];
	NSLog([formatter stringFromDate: date2]);
	
	//日期对象，日历
	NSDate * date3 = [NSDate date];
	NSCalendar * cal = [NSCalendar currentCalendar];
	/*NSDateComponents *comp = [cal components: NSCalendarUnitMonth
			fromDate: date3];	*/
	
	
	[pool drain];
	return 0;
}