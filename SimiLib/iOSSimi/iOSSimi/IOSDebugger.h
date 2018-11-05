//
//  IOSDebugger.h
//  iOSSimi
//
//  Created by Gordan Glavaš on 05/11/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Debugger.h"

NS_ASSUME_NONNULL_BEGIN

@class SimiDebuggerViewController;

@interface IOSDebugger : NSObject <SMDebugger_DebuggerInterface>

+ (instancetype)sharedInstance;

- (void)setDebugViewController:(nullable SimiDebuggerViewController *)vc;

@end

NS_ASSUME_NONNULL_END
