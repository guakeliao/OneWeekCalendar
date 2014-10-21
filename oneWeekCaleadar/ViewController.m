//
//  ViewController.m
//  oneWeekCaleadar
//
//  Created by guakeliao on 14-10-21.
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
    OneWeekCalendar *demo = [[[NSBundle mainBundle]loadNibNamed:@"OneWeekCalendar" owner:nil options:0]firstObject];
    demo.frame = CGRectMake(0, 100, 200, 100);
    [self.view addSubview:demo];
    [demo markDates:[NSArray arrayWithObjects:[NSNumber numberWithInt:21],[NSNumber numberWithInt:25], nil] withColors:[NSArray arrayWithObjects:@"0x383838",@"0xcfd4d8",@"0x383838", nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
