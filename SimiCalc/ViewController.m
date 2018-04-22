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
#import "java/lang/Double.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtLeft;
@property (weak, nonatomic) IBOutlet UITextField *txtRIght;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segOp;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGoTap:(id)sender {
    id<SMSimiProperty> left = [SMSimiMapper toSimiPropertyWithId:[[JavaLangDouble alloc] initWithDouble:[[self.txtLeft text] doubleValue]]];
    id<SMSimiProperty> right = [SMSimiMapper toSimiPropertyWithId:[[JavaLangDouble alloc] initWithDouble:[[self.txtRIght text] doubleValue]]];
    id<SMSimiProperty> op = [SMSimiMapper toSimiPropertyWithId:[self.segOp titleForSegmentAtIndex:[self.segOp selectedSegmentIndex]]];
    id<SMSimiProperty> prop = [SMActiveSimi evalWithNSString:@"Calc" withNSString:@"compute" withSMSimiPropertyArray:[IOSObjectArray arrayWithNSArray:@[left, op, right] type:SMSimiProperty_class_()]];
    [self.lblResult setText:[NSString stringWithFormat:@"Result is: %@", prop]];
}


@end
