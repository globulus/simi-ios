//
//  ViewController.m
//  SimiCalc
//
//  Created by Gordan Glavaš on 20/04/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "ViewController.h"
#import "ActiveSimi.h"
#import "SimiProperty.h"
#import "SimiMapper.h"
#import "SimiValue.h"
#import "java/lang/Double.h"
#import "java/util/Map.h"
#import "java/util/Set.h"
#import <AFNetworking/AFNetworking.h>
#import "ConversionUtil.h"
#import "IOSObjectArray+Simi.h"
#import "java/lang/Long.h"

@interface ViewController () <SMActiveSimi_Callback>

@property (weak, nonatomic) IBOutlet UITextField *txtLeft;
@property (weak, nonatomic) IBOutlet UITextField *txtRIght;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segOp;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;
@property (weak, nonatomic) IBOutlet UILabel *lblStats;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:@"https://api.reddit.com/top.json" parameters:@{@"limit": @3} progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSString *json = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"JSON: %@", json);
        [SMActiveSimi evalAsyncWithSMActiveSimi_Callback:self withNSString:@"RedditStats" withNSString:@"getStats" withSMSimiPropertyArray:[IOSObjectArray arrayWithNSArray:@[[SMSimiMapper toSimiPropertyWithId:json]] type:SMSimiValue_class_()]];
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    id<SMSimiProperty> date = [SMActiveSimi evalWithNSString:@"Date" withNSString:@"init" withSMSimiPropertyArray:[IOSObjectArray arrayWithNSArray:@[[SMSimiMapper toSimiPropertyWithId:[[JavaLangLong alloc] initWithLong:(long)([NSDate new].timeIntervalSince1970 * 1000)]]] type: SMSimiValue_class_()]];
    NSLog(@"Date: %@", date);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGoTap:(id)sender {
    id<SMSimiProperty> left = [SMSimiMapper toSimiPropertyWithId:[[JavaLangDouble alloc] initWithDouble:[[self.txtLeft text] doubleValue]]];
    id<SMSimiProperty> right = [SMSimiMapper toSimiPropertyWithId:[[JavaLangDouble alloc] initWithDouble:[[self.txtRIght text] doubleValue]]];
    id<SMSimiProperty> op = [SMSimiMapper toSimiPropertyWithId:[self.segOp titleForSegmentAtIndex:[self.segOp selectedSegmentIndex]]];
    id<SMSimiProperty> prop = [SMActiveSimi evalWithNSString:@"Calc" withNSString:@"compute" withSMSimiPropertyArray:[IOSObjectArray arrayWithNSArray:@[left, op, right] type:SMSimiValue_class_()]];
    [self.lblResult setText:[NSString stringWithFormat:@"Result is: %@", prop]];
}
    
#pragma mark - ActiveSimi Callback
    
- (void)doneWithSMSimiProperty:(id<SMSimiProperty>)result {
    NSMutableString *string = [[NSMutableString alloc] initWithString:@"Top posters:\n\n"];
    NSDictionary *dict = [ConversionUtil dictionaryFromMap:[SMSimiMapper fromObjectWithSMSimiObject:[[result getValue] getObject]]];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [string appendFormat:@"%@ with %@ comments\n", key, obj];
    }];
    self.lblStats.text = string;
}

@end
