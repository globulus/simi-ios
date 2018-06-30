//
//  ConversionUtil.h
//  SimiCalc
//
//  Created by Gordan Glavaš on 24/04/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SimiMapper.h"
#import "java/util/List.h"
#import "java/util/Set.h"
#import "java/util/Map.h"

@interface ConversionUtil : NSObject

+ (NSArray *)arrayFromList:(id<JavaUtilList>)list;
+ (NSArray *)arrayFromSet:(id<JavaUtilSet>)set;
+ (NSDictionary *)dictionaryFromMap:(id<JavaUtilMap>)map;


@end
