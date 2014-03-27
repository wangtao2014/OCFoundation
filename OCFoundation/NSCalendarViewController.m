//
//  NSCalenderViewController.m
//  OCFoundation
//
//  Created by wangtao on 14-3-26.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "NSCalendarViewController.h"

@interface NSCalendarViewController ()

@end

@implementation NSCalendarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSLog(@"currentCalendar=%@", calendar);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
