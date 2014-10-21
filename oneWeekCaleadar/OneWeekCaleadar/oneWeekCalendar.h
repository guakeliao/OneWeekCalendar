//
//  oneWeekCalendar.h
//  oneWeekCaleadar
//
//  Created by guakeliao on 14-10-21.
//  Copyright (c) 2014年 Boco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OneWeekCalendar : UIView
/**
 *  设置对应号数的颜色
 *
 *  @param datas  需要设置颜色的号数(当前一周内的)
 *  @param Colors 对应号数的颜色
 */
-(void)markDates:( NSArray *)dates withColors:( NSArray *)Colors;

@end
