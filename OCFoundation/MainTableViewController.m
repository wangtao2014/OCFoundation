//
//  MainTableViewController.m
//  OCFoundation
//
//  Created by wangtao on 14-3-26.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()

@property (nonatomic, strong) NSArray *contentsArray;

@property (nonatomic, strong) NSArray *sectionsArray;
@property (nonatomic, strong) NSArray *valueObjectsArray;
@property (nonatomic, strong) NSArray *xmlArray;
@property (nonatomic, strong) NSArray *stringsArray;
@property (nonatomic, strong) NSArray *collectionsArray;

@end

@implementation MainTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        self.sectionsArray = @[@"Value Objects", @"XML", @"Strings", @"Collections"];
        
        self.valueObjectsArray = @[@"NSCalendar", @"NSCache", @"NSData", @"NSMutableData", @"NSPurgeableData", @"NSDate", @"NSCalendarDate", @"NSDateComponents", @"NSDecimalNumberHandler", @"NSLocale", @"NSNull", @"NSTimeZone", @"NSValue", @"NSNumber", @"NSDecimalNumber", @"NSValueTransformer"];
        self.xmlArray = @[@"NSXMLParser"];
        self.stringsArray = @[@"NSAttributedString", @"NSMutableAttributedString", @"NSCharacterSet", @"NSMutableCharacterSet", @"NSString", @"NSMutableString", @"NSFormatter", @"NSDateFormatter", @"NSNumberFormatter", @"NSScanner", @"NSSortDescriptor"];
        self.collectionsArray = @[@"NSArray", @"NSMutableArray", @"NSDictionary", @"NSMutableDictionay", @"NSEnumerator", @"NSDictionaryEnumerator"];
        
        self.contentsArray = @[self.valueObjectsArray, self.xmlArray, self.stringsArray, self.collectionsArray];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.contentsArray objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.sectionsArray objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuseIdentifier"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if ([indexPath section] == 0) {
        cell.textLabel.text = [self.valueObjectsArray objectAtIndex:indexPath.row];
    } else if ([indexPath section] == 1) {
        cell.textLabel.text = [self.xmlArray objectAtIndex:indexPath.row];
    } else if ([indexPath section] == 2) {
        cell.textLabel.text = [self.stringsArray objectAtIndex:indexPath.row];
    } else if ([indexPath section] == 3) {
        cell.textLabel.text = [self.collectionsArray objectAtIndex:indexPath.row];
    }
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
