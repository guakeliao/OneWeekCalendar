//
//  oneWeekCalendar.m
//  oneWeekCaleadar
//
//  Created by guakeliao on 14-10-21.
//  Copyright (c) 2014年 Boco. All rights reserved.
//

#import "OneWeekCalendar.h"
#import "UIColor+expanded.h"
#import "CalendarDateView.h"
@interface OneWeekCalendar ()

//@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *MondayLabel;
//@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *MondayColor;
@property (strong, nonatomic) IBOutletCollection(CalendarDateView) NSArray *calendarDateView;

@end
@implementation OneWeekCalendar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect
{

}

-(void)markDates:( NSArray *)dates withColors:( NSArray *)Colors
{
    NSInteger year,month,day,hour,min,sec,week;
    NSString *weekStr=nil;
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *now = [NSDate date];;
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday |
    NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    comps = [calendar components:unitFlags fromDate:now];
    year = [comps year];
    week = [comps weekday];
    month = [comps month];
    day = [comps day];
    hour = [comps hour];
    min = [comps minute];
    sec = [comps second];
    
    if(week==1)
    {
        weekStr=@"星期天";
    }else if(week==2){
        weekStr=@"星期一";
        
    }else if(week==3){
        weekStr=@"星期二";
        
    }else if(week==4){
        weekStr=@"星期三";
        
    }else if(week==5){
        weekStr=@"星期四";
        
    }else if(week==6){
        weekStr=@"星期五";
        
    }else if(week==7){
        weekStr=@"星期六";
        
    }
    else {
        NSLog(@"error!");
    }
    //    NSLog(@"现在是:%ld年%ld月%ld日 %ld时%ld分%ld秒  %@",(long)year,(long)month,(long)day,(long)hour,(long)min,(long)sec,weekStr);
    if(_type != TypeWeek){
        NSInteger Monday = day - week+1;
        for (int i=1; i<=_calendarDateView.count; i++) {
            CalendarDateView *calendarDateView = [_calendarDateView objectAtIndex:i-1];
            //        NSLog(@"本周 星期%d :%ld年%ld月%ld日 ",i,(long)year,(long)month,(long)Monday);
            calendarDateView.weakLabelText = [NSString stringWithFormat:@"%@",[self WeekString:i]];
            calendarDateView.dayLabelText = [NSString stringWithFormat:@"%ld",(long)Monday];
            if (day == Monday) {
                calendarDateView.dayLabelColor = [UIColor redColor];
            }
            for (int j = 0; j < dates.count; j ++) {
                if ([((NSString *)[dates objectAtIndex:j]) integerValue] == Monday) {
                    calendarDateView.colorLabelColor = [UIColor colorWithHexString:[Colors objectAtIndex:j]];
                }
            }
            Monday=Monday+1;
        }
    }else
    {
       NSInteger customWeek = week;
       NSInteger customday = day;
        for (int i=1; i<=_calendarDateView.count; i++) {
            CalendarDateView *calendarDateView = [_calendarDateView objectAtIndex:i-1];
            //        NSLog(@"本周 星期%d :%ld年%ld月%ld日 ",i,(long)year,(long)month,(long)Monday);
            calendarDateView.weakLabelText = [NSString stringWithFormat:@"%@",[self WeekString:customWeek]];
            calendarDateView.dayLabelText = [NSString stringWithFormat:@"%ld",(long)customday];
            if(i == 1)
            {
                calendarDateView.dayLabelColor = [UIColor redColor];
            }
            for (int j = 0; j < dates.count; j ++) {
                if ([((NSString *)[dates objectAtIndex:j]) integerValue] == customday) {
                    calendarDateView.colorLabelColor = [UIColor colorWithHexString:[Colors objectAtIndex:j]];
                }
            }
            customWeek++;
            customday++;
        }
    }
}

-(NSString *)WeekString:(NSInteger)i
{
    NSInteger week = i%7 == 0?i:i%7;
    NSString *weekString = nil;
    switch (week) {
        case 2:{weekString = @"一";}break;
        case 3:{weekString = @"二";}break;
        case 4:{weekString = @"三";}break;
        case 5:{weekString = @"四";}break;
        case 6:{weekString = @"五";}break;
        case 7:{weekString = @"六";}break;
        case 1:{weekString = @"日";}break;
        default:
            break;
    }
    return weekString;
}
@end
