//
//  CodeViewController.m
//  OCFoundation
//
//  Created by wangtao on 14-3-26.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "CodeViewController.h"

@interface CodeViewController ()

@property (nonatomic, strong) NSString *content;

@end

@implementation CodeViewController

- (id)initWithContent:(NSString *)content
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        _content = content;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    NSLog(@"content=%@", _content);
    NSError *error;
    NSString *url = [[NSBundle mainBundle] pathForResource:_content ofType:@"x"];
    NSString *contentStr = [NSString stringWithContentsOfFile:url encoding:NSUTF8StringEncoding error:&error];
    
    if (!error) {
        textView.text = contentStr;
        [self.view addSubview:textView];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
