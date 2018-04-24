//
//  ConversionUtil.m
//  SimiCalc
//
//  Created by Gordan Glavaš on 24/04/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "ConversionUtil.h"

#import "SimiProperty.h"

@implementation ConversionUtil

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

+ (NSArray *)arrayFromList:(id<JavaUtilList>)list {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[list size]];
    for (id obj in list) {
        [array addObject:obj];
    }
    return array;
}

+ (NSArray *)arrayFromSet:(id<JavaUtilSet>)set {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[set size]];
    for (id obj in set) {
        [array addObject:obj];
    }
    return array;
}

+ (NSDictionary *)dictionaryFromMap:(id<JavaUtilMap>)map {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:[map size]];
    for (JavaUtilMap_Entry *entry in [map entrySet]) {
        [dict setObject:[entry valueForKey:@"value"] forKey:[entry valueForKey:@"key"]];
    }
    return dict;
}

@end
