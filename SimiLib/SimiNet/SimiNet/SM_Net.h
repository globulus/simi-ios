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

@interface SM_Net : NSObject

+ (SMSimiValue *)get:(id<SMSimiObject>)sender
         interpreter:(id<SMBlockInterpreter>)interpeter
             request:(id<SMSimiProperty>)request
            callback:(id<SMSimiProperty>)callback;

+ (SMSimiValue *)post:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
              request:(id<SMSimiProperty>)request
             callback:(id<SMSimiProperty>)callback;

+ (SMSimiValue *)put:(id<SMSimiObject>)sender
         interpreter:(id<SMBlockInterpreter>)interpeter
             request:(id<SMSimiProperty>)request
            callback:(id<SMSimiProperty>)callback;

+ (SMSimiValue *)delete:(id<SMSimiObject>)sender
            interpreter:(id<SMBlockInterpreter>)interpeter
                request:(id<SMSimiProperty>)request
               callback:(id<SMSimiProperty>)callback;
@end
