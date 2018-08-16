//
//  Net.m
//  SimiNet
//
//  Created by Gordan Glavaš on 30/06/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "SM_File.h"

#import "SimiValue.h"
#import "SimiObject.h"

@interface SM_File()

@end

@implementation SM_File

+ (SMSimiValue *)readString:(id<SMSimiObject>)sender
                interpreter:(id<SMBlockInterpreter>)interpeter
                       path:(id<SMSimiProperty>)path {
    return new_SMSimiValue_String_initWithNSString_([NSString stringWithContentsOfFile:[[path getValue] getString] encoding:NSUTF8StringEncoding error:nil]);
}

+ (SMSimiValue *)write:(id<SMSimiObject>)sender
           interpreter:(id<SMBlockInterpreter>)interpeter
                  text:(id<SMSimiProperty>)text {
    NSError *error;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *path = [[[sender getWithNSString:@"path" withSMSimiEnvironment:[interpeter getEnvironment]] getValue] getString];
    NSString *dir = [path stringByDeletingLastPathComponent];
    if (![fileManager fileExistsAtPath:dir]) {
        [fileManager createDirectoryAtPath:dir withIntermediateDirectories:YES attributes:nil error:nil];
    }
    [[[text getValue] getString] writeToFile:path atomically:NO encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        NSLog(@"%@", error);
    }
    return nil;
}

@end
