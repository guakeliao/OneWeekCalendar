//
//  CalendarDateView.h
//  NeckCar
//
//  Created by guakeliao on 14/10/30.
//  Copyright (c) 2014年 Haidora. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CalendarDateView : UIView

@property (nonatomic, strong, readonly) UILabel *weakLabel;
@property (nonatomic, strong, readonly) UILabel *dayLabel;
@property (nonatomic, strong, readonly) UILabel *colorLabel;

@property (nonatomic, assign) IBInspectable CGFloat fontSize;
@property (nonatomic, assign) IBInspectable CGFloat colorLabelHeight;

@property (nonatomic, strong) IBInspectable UIColor *weakLabelColor;
@property (nonatomic, strong) IBInspectable UIColor *dayLabelColor;
@property (nonatomic, strong) IBInspectable UIColor *colorLabelColor;

@property (nonatomic, strong) IBInspectable NSString *weakLabelText;
@property (nonatomic, strong) IBInspectable NSString *dayLabelText;

@end
