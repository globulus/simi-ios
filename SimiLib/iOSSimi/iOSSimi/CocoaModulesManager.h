//
//  CocoaModulesManager.h
//  iOSSimi
//
//  Created by Gordan Glavaš on 30/06/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dlfcn.h"
#import "SimiProperty.h"
#import "SimiObject.h"
#import "BlockInterpreter.h"
#import "java/util/List.h"

@interface CocoaModulesManager : NSObject {
    NSMutableDictionary *classes;
    NSMutableDictionary *globals;
}

- (void)loadFramework:(NSString *)framework;
- (id<SMSimiProperty>)call:(NSString *)className
                    method:(NSString *)methodName
                    sender:(id<SMSimiObject>)sender
               interpreter:(id<SMBlockInterpreter>)interpreter
                      args:(id<JavaUtilList>)args;

@end
