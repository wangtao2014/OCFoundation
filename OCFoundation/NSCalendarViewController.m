//
//  NSCalenderViewController.m
//  OCFoundation
//
//  Created by wangtao on 14-3-26.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "NSCalendarViewController.h"
#import "CodeViewController.h"

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
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithTitle:@"Code" style:UIBarButtonItemStylePlain target:self action:@selector(code:)];
    self.navigationItem.rightBarButtonItem = rightBarItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Source Code Review

- (void)code:(id)sender
{
    CodeViewController *codeController = [[CodeViewController alloc] initWithContent:NSStringFromClass([self class])];
    codeController.title = @"Code";
    [self.navigationController pushViewController:codeController animated:YES];
}

@end
