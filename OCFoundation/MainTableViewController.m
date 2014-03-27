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
@property (nonatomic, strong) NSArray *predicatesArray;
@property (nonatomic, strong) NSArray *osServicesArray;
@property (nonatomic, strong) NSArray *fileSystemArray;
@property (nonatomic, strong) NSArray *urlArray;
@property (nonatomic, strong) NSArray *interCommunicationArray;
@property (nonatomic, strong) NSArray *lockAndThreadArray;
@property (nonatomic, strong) NSArray *notificationArray;
@property (nonatomic, strong) NSArray *archiveAndSerializationArray;
@property (nonatomic, strong) NSArray *ocLanguageServicesArray;

@end

@implementation MainTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        self.sectionsArray = @[@"Value Objects", @"XML", @"Strings", @"Collections", @"predicates", @"Operating-System Services", @"File System", @"URL", @"Interprocess Communication", @"Locking/Threading", @"Notifications", @"Archiving and Serialication", @"Objective-C Language Services"];
        
        self.valueObjectsArray = @[@"NSCalendar", @"NSCache", @"NSData", @"NSMutableData", @"NSPurgeableData", @"NSDate", @"NSCalendarDate", @"NSDateComponents", @"NSDecimalNumberHandler", @"NSLocale", @"NSNull", @"NSTimeZone", @"NSValue", @"NSNumber", @"NSDecimalNumber", @"NSValueTransformer"];
        self.xmlArray = @[@"NSXMLParser"];
        self.stringsArray = @[@"NSAttributedString", @"NSMutableAttributedString", @"NSCharacterSet", @"NSMutableCharacterSet", @"NSString", @"NSMutableString", @"NSFormatter", @"NSDateFormatter", @"NSNumberFormatter", @"NSScanner", @"NSSortDescriptor"];
        self.collectionsArray = @[@"NSArray", @"NSMutableArray", @"NSDictionary", @"NSMutableDictionay", @"NSEnumerator", @"NSDictionaryEnumerator"];
        
        self.predicatesArray = @[@"NSExpression", @"NSPredicate", @"NSComparisonPredicate", @"NSCompoundPredicate"];
        self.osServicesArray = @[@"NSError", @"NSHost", @"NSNetService", @"NSNetServiceBroswer", @"NSOrthography", @"NSProcessInfo", @"NSRunLoop", @"NSTextCheckingResult", @"NSTimer", @"NSUserDefaults"];
        
        self.fileSystemArray = @[@"NSBundle", @"NSFileHandle", @"NSFileManager", @"NSMetadataItem", @"NSMetadataQuery", @"NSMetadataQueryAttributeValueTuple", @"NSMetadataQueryResultGroup", @"NSStream", @"NSInputStream", @"NSOutputStream"];
        
        self.urlArray = @[@"NSCachedURLResponse", @"NSHTTPCookie", @"NSHTTPCookieStorage", @"NSURL", @"NSURLAuthorizationChallenge", @"NSURLCache", @"NSURLConnection", @"NSURLCredential", @"NSURLCredentialStorage", @"NSURLDownload", @"NSURLProtectionSpace", @"NSURLProtocol", @"NSURLRequest", @"NSMutableURLRequest", @"NSURLResponse", @"NSHTTPURLResponse"];
        
        self.interCommunicationArray = @[@"NSPipe", @"NSPort", @"NSMachPort", @"NSMessagePort"];
        
        self.lockAndThreadArray = @[@"NSConditionLock", @"NSDistributedLock", @"NSLock", @"NSOperation", @"NSBlockOperation", @"NSInvocationOperation", @"NSQueue", @"NSRecursiveLock", @"NSTask", @"NSThread"];
        self.notificationArray = @[@"NSNotification", @"NSNotificationCenter", @"NSDistributedNotificationCenter", @"NSNotificationQueue"];
        
        self.archiveAndSerializationArray = @[@"NSCoder", @"NSArchiver", @"NSKeyedArchiver", @"NSKeyedUnarchiver", @"NSUnarchiver", @"NSPropertyListSerialization"];
        
        self.ocLanguageServicesArray = @[@"NSAssertionHandler", @"NSAutoreleasePool", @"NSClassDescription",@"NSException",@"NSInvocation",@"NSMethodSignature",@"NSUndoManager"];
        
        self.contentsArray = @[self.valueObjectsArray, self.xmlArray, self.stringsArray, self.collectionsArray, self.predicatesArray, self.osServicesArray, self.fileSystemArray, self.urlArray, self.interCommunicationArray, self.lockAndThreadArray, self.notificationArray, self.archiveAndSerializationArray, self.ocLanguageServicesArray];
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
    return [self.sectionsArray count];
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

    cell.textLabel.text = [[self.contentsArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark -
#pragma mark Talbe View Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"text string=%@", cell.textLabel.text);
    Class nsClass = NSClassFromString([NSString stringWithFormat:@"%@ViewController", cell.textLabel.text]);
    UIViewController *controller = [[nsClass alloc] init];
    controller.title = cell.textLabel.text;
    [self.navigationController pushViewController:controller animated:YES];
}

@end
