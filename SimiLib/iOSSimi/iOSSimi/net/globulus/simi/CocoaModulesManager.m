//
//  CocoaModulesManager.m
//  iOSSimi
//
//  Created by Gordan Glavaš on 30/06/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "CocoaModulesManager.h"

@implementation CocoaModulesManager

- (instancetype)init {
    self = [super init];
    if (self) {
        globals = [[NSMutableDictionary alloc] init];
        classes = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)loadFramework:(NSString *)framework {
//    NSString *fullPath = [NSString stringWithFormat:@"%@.framework/%@", framework, framework];
//    void *frameworkHandle = dlopen([fullPath cStringUsingEncoding:NSUTF8StringEncoding], RTLD_LAZY);
//    Class class = NSClassFromString(framework);
//    if (class) {
//        [classes setObject:class forKey:framework];
//    } else {
//        NSLog(@"Error, can't load class: %@", framework);
//    }
}

- (id<SMSimiProperty>)call:(NSString *)className
                    method:(NSString *)methodName
                    sender:(id<SMSimiObject>)sender
               interpreter:(id<SMBlockInterpreter>)interpreter
                      args:(id<JavaUtilList>)args {
    Class class = [classes objectForKey:className];
    if (class == nil) {
        class = NSClassFromString(className);
        if (class) {
            [classes setObject:class forKey:className];
        }
    }
    if (class) {
        NSMutableArray *params = [NSMutableArray arrayWithArray:@[sender, interpreter]];
        for (id arg in args) {
            [params addObject:arg];
        }
        NSMutableString *sel = [NSMutableString stringWithString:methodName];
        for (int i = 0; i < [args size] + 2; i++) {
            [sel appendString:@":"];
        }
        return [class performSelector:NSSelectorFromString(sel) withObject:params];
    }
    return nil;
}

@end
