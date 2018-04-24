//
//  IOSObjectArray+Simi.m
//  SimiCalc
//
//  Created by Gordan Glavaš on 24/04/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "IOSObjectArray+Simi.h"

@implementation IOSObjectArray (Simi)

+ (IOSObjectArray *)arrayWithProps:(id<SMSimiProperty>)props, ... {
    NSMutableArray *array = [NSMutableArray array];
    va_list args;
    va_start(args, props);
    for (id<SMSimiProperty> prop = props; prop != nil; prop = va_arg(args, id<SMSimiProperty>)) {
        [array addObject:prop];
    }
    va_end(args);
    return [IOSObjectArray arrayWithNSArray:array type:SMSimiProperty_class_()];
}

@end
