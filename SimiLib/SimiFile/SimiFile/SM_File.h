//
//  Net.h
//  SimiNet
//
//  Created by Gordan Glavaš on 30/06/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimiValue.h"
#import "SimiObject.h"
#import "BlockInterpreter.h"

@interface SM_File : NSObject

+ (SMSimiValue *)readString:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
                       path:(id<SMSimiProperty>)path;
@end
