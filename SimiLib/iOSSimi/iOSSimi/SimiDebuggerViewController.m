//
//  SimiDebuggerViewController.m
//  iOSSimi
//
//  Created by Gordan Glavaš on 05/11/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "SimiDebuggerViewController.h"

#import "IOSDebugger.h"
#import "java/util/concurrent/BlockingQueue.h"

@interface SimiDebuggerViewController () <UITextFieldDelegate>

@property (unsafe_unretained, nonatomic) IBOutlet UITextField *input;
@property (unsafe_unretained, nonatomic) IBOutlet UITextView *output;

@end

@implementation SimiDebuggerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.input.delegate = self;
    
    [[IOSDebugger sharedInstance] setDebugViewController:self];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    NSString *text = textField.text;
    dispatch_async( dispatch_get_main_queue(), ^{
        textField.text = @"";
    });
    [[self getQueue] putWithId:text];
    return YES;
}

#pragma mark - DebuggerInterface

- (id<JavaUtilConcurrentBlockingQueue>)getQueue {
    return [[IOSDebugger sharedInstance] getQueue];
}

- (void)printWithNSString:(NSString *)s {
    dispatch_async( dispatch_get_main_queue(), ^{
        self.output.text = [self.output.text stringByAppendingFormat:@"%@", s];
    });
}

- (void)printlnWithNSString:(NSString *)s {
    NSLog(@"%@", s);
    dispatch_async( dispatch_get_main_queue(), ^{
        NSLog(@"%@", s);
        self.output.text = [self.output.text stringByAppendingFormat:@"%@\n", s];
    });
}

- (NSString *)read {
    return nil;
}

- (void)resume {
    
}

@end
