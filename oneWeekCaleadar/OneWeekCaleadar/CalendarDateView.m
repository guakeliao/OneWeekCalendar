//
//  CalendarDateView.m
//  NeckCar
//
//  Created by guakeliao on 14/10/30.
//  Copyright (c) 2014年 Haidora. All rights reserved.
//
#define margin 2
#import "CalendarDateView.h"

@interface CalendarDateView ()

@property (nonatomic, strong, readwrite) UILabel *weakLabel;
@property (nonatomic, strong, readwrite) UILabel *dayLabel;
@property (nonatomic, strong, readwrite) UILabel *colorLabel;

@end

@implementation CalendarDateView

#pragma Mark
#pragma Make Init
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    _weakLabel = [UILabel new];
    _dayLabel = [UILabel new];
    _colorLabel = [UILabel new];
    _weakLabel.textAlignment = NSTextAlignmentCenter;
    _dayLabel.textAlignment = NSTextAlignmentCenter;
    _colorLabel.textAlignment = NSTextAlignmentCenter;

    _fontSize = 9;
    _colorLabelHeight = 3;
    _weakLabelColor = [UIColor grayColor];
    _dayLabelColor = _weakLabelColor;
    _colorLabelColor = [UIColor clearColor];

    [self addSubview:_weakLabel];
    [self addSubview:_dayLabel];
    [self addSubview:_colorLabel];
}

#pragma Mark
#pragma Mark Renders

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat colorHeight = _colorLabelHeight;
    CGFloat width = CGRectGetWidth(self.bounds);
    CGFloat height = (CGRectGetHeight(self.bounds) - colorHeight) / 2;

    _weakLabel.frame = CGRectMake(0, 0, width, height);
    _dayLabel.frame = CGRectMake(0, height, width, height);
    _colorLabel.frame = CGRectMake(margin, height * 2, width-2*margin, colorHeight);

    _weakLabel.font = [UIFont systemFontOfSize:_fontSize];
    _dayLabel.font = [UIFont systemFontOfSize:_fontSize];

    _weakLabel.textColor = _weakLabelColor;
    _dayLabel.textColor = _dayLabelColor;
    _colorLabel.backgroundColor = _colorLabelColor;

    if (_weakLabelText.length > 0)
    {
        _weakLabel.text = _weakLabelText;
    }
    if (_dayLabelText.length > 0)
    {
        _dayLabel.text = _dayLabelText;
    }
}

@end
