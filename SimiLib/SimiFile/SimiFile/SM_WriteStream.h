//
//  SM_WriteStream.h
//  SimiFile
//
//  Created by Gordan Glavaš on 16/08/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SimiValue.h"
#import "SimiObject.h"
#import "BlockInterpreter.h"

@interface SM_WriteStream : NSObject

+ (SMSimiValue *)init:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
                 file:(id<SMSimiProperty>)file;

+ (SMSimiValue *)write:(id<SMSimiObject>)sender
           interpreter:(id<SMBlockInterpreter>)interpeter
                  text:(id<SMSimiProperty>)text;

+ (SMSimiValue *)close:(id<SMSimiObject>)sender
           interpreter:(id<SMBlockInterpreter>)interpeter;

@end
