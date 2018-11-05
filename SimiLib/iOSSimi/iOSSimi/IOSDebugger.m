//
//  IOSDebugger.m
//  iOSSimi
//
//  Created by Gordan Glavaš on 05/11/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "IOSDebugger.h"

#import "JavaObject.h"
#import "SimiDebuggerViewController.h"
#import "java/util/StringJoiner.h"
#import "java/util/concurrent/ArrayBlockingQueue.h"

@interface IOSDebugger ()

@property (strong, atomic) JavaUtilConcurrentArrayBlockingQueue *queue;
@property (weak, atomic) SimiDebuggerViewController *viewController;
@property (assign, atomic) BOOL launchingController;
@property (strong, atomic) NSMutableString *buffer;

@end

@implementation IOSDebugger

+ (instancetype)sharedInstance {
    static IOSDebugger *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[IOSDebugger alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.queue = [[JavaUtilConcurrentArrayBlockingQueue alloc] initWithInt:10];
        [self setDebugViewController:nil];
        self.launchingController = false;
        self.buffer = [NSMutableString new];
    }
    return self;
}

- (void)launchViewController {
    dispatch_async( dispatch_get_main_queue(), ^{
        UIViewController *vc = [[SimiDebuggerViewController alloc] initWithNibName:@"SimiDebuggerViewController" bundle:nil];
        [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentModalViewController:vc animated:true];
    });
}

- (void)setDebugViewController:(nullable SimiDebuggerViewController *)viewController {
    self.viewController = viewController;
    if (self.viewController) {
        [self.viewController printWithNSString:self.buffer];
        self.launchingController = false;
        self.buffer = [NSMutableString new];
    }
}

#pragma mark - DebuggerInterface

- (void)printWithNSString:(NSString *)s {
    if (self.viewController == nil) {
        [self.buffer appendString:s];
        if (!self.launchingController) {
            [self launchViewController];
        }
    } else {
        [self.viewController printWithNSString:s];
    }
}

- (void)printlnWithNSString:(NSString *)s {
    if (self.viewController == nil) {
        [self.buffer appendFormat:@"%@\n", s];
        if (!self.launchingController) {
            [self launchViewController];
        }
    } else {
        [self.viewController printlnWithNSString:s];
    }
}

- (NSString *)read {
    return nil;
}

- (id<JavaUtilConcurrentBlockingQueue>)getQueue {
    return self.queue;
}

- (void)resume {
    dispatch_async( dispatch_get_main_queue(), ^{
        [self.viewController dismissViewControllerAnimated:true completion:nil];
        [self setDebugViewController:nil];
    });
}

@end
