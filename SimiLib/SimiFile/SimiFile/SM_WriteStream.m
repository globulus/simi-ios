//
//  SM_WriteStream.m
//  SimiFile
//
//  Created by Gordan Glavaš on 16/08/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "SM_WriteStream.h"

#import "java/util/LinkedHashMap.h"

@implementation SM_WriteStream

+ (SMSimiValue *)init:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
                 file:(id<SMSimiProperty>)file {
    JavaUtilLinkedHashMap *map = [[JavaUtilLinkedHashMap alloc] init];
    [map putWithId:@"path" withId:[[[file getValue] getObject] getWithNSString:@"path" withSMSimiEnvironment:[interpeter getEnvironment]]];
    return new_SMSimiValue_Object_initWithSMSimiObject_([interpeter newInstanceWithSMSimiClass:(id<SMSimiClass>) sender withJavaUtilLinkedHashMap:map]);
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
    [[[text getValue] getString] writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        NSLog(@"%@", error);
    }
    return nil;
}

+ (SMSimiValue *)close:(id<SMSimiObject>)sender
           interpreter:(id<SMBlockInterpreter>)interpeter {
    return nil;
}

@end
