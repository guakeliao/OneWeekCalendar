//
//  oneWeekCalendar.m
//  oneWeekCaleadar
//
//  Created by guakeliao on 14-10-21.
//  Copyright (c) 2014年 Boco. All rights reserved.
//

#import "OneWeekCalendar.h"
#import "UIColor+expanded.h"
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
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *now = [NSDate date];;
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit |
    NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
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
    
    NSInteger Monday = day - week+1+1;
    for (int i=1; i<=7; i++) {
        UILabel *label = (UILabel *)[self viewWithTag:100+i];
        //        NSLog(@"本周 星期%d :%ld年%ld月%ld日 ",i,(long)year,(long)month,(long)Monday);
        label.text = [NSString stringWithFormat:@"%ld",(long)Monday];
        if (day == Monday) {
            label.textColor = [UIColor redColor];
        }
        for (int j = 0; j < dates.count; j ++) {
            if ([((NSString *)[dates objectAtIndex:j]) integerValue] == Monday) {
                UILabel *ColorLabel = (UILabel *)[self viewWithTag:500+i];
                ColorLabel.backgroundColor = [UIColor colorWithHexString:[Colors objectAtIndex:j]];
            }
        }
        Monday=Monday+1;
    }
}
@end
