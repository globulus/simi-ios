//
//  IOSObjectArray+Simi.h
//  SimiCalc
//
//  Created by Gordan Glavaš on 24/04/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "IOSObjectArray.h"
#import "SimiProperty.h"

@interface IOSObjectArray (Simi)

+ (IOSObjectArray *)arrayWithProps:(id<SMSimiProperty>)props, ...
NS_REQUIRES_NIL_TERMINATION;

@end
