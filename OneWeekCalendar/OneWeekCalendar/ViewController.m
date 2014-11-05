//
//  ViewController.m
//  OneWeekCalendar
//
//  Created by guakeliao on 14/11/5.
//  Copyright (c) 2014年 Boco. All rights reserved.
//

#import "ViewController.h"
#import "OneWeekCalendar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OneWeekCalendar *demo = [[[NSBundle mainBundle]loadNibNamed:@"OneWeekCalendar" owner:nil options:0]lastObject];
    demo.frame = CGRectMake(10, 30, 300, 50);
//    demo.backgroundColor = [UIColor grayColor];
    [self.view addSubview:demo];
    
    demo.type = TypeWeek;
    [demo markDates:[NSArray arrayWithObjects:[NSNumber numberWithInt:6],[NSNumber numberWithInt:10], nil] withColors:[NSArray arrayWithObjects:@"0x383838",@"0xcfd4d8",@"0x383838", nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
