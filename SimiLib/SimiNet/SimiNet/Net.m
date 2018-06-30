//
//  Net.m
//  SimiNet
//
//  Created by Gordan Glavaš on 30/06/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "Net.h"

#import "SimiCallable.h"
#import "java/util/LinkedHashMap.h"
#import "java/util/Collections.h"

@implementation Net

- (SMSimiValue *)post:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
              request:(id<SMSimiProperty>)request
             callback:(id<SMSimiProperty>)callback {
    
    id<SMSimiObject> object = [[request getValue] getObject];
    id<SMSimiEnvironment> env = [interpeter getEnvironment];
    
    NSMutableURLRequest *req = [[NSMutableURLRequest alloc] init];
    [req setURL:[NSURL URLWithString:[[[object getWithNSString:@"url" withSMSimiEnvironment:env] getValue] getString]]];
    [req setHTTPMethod:@"POST"];
    [req setHTTPBody:[[[[object getWithNSString:@"url" withSMSimiEnvironment:env] getValue] getString] dataUsingEncoding:NSUTF8StringEncoding]];
    id<SMSimiObject> headers = [[[object getWithNSString:@"headers" withSMSimiEnvironment:env] getValue] getObject];
    for (SMSimiValue *header in [headers keys] ) {
        [req setValue:[header getString] forHTTPHeaderField:[[[headers getWithNSString:[header getString] withSMSimiEnvironment:env] getValue] getString]];
    }
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:req
                                            completionHandler:
      ^(NSData *data, NSURLResponse *response, NSError *error) {
          NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
          JavaUtilLinkedHashMap *props = [[JavaUtilLinkedHashMap alloc] init];
          [props putWithId:@"code" withId:[[SMSimiValue_Number alloc] initWithDouble:httpResponse.statusCode]];
          [props putWithId:@"body" withId:[[SMSimiValue_String alloc] initWithNSString:[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]]];
          SMSimiValue *simiResponse = [[SMSimiValue_Object alloc] initWithSMSimiObject:[interpeter newObjectWithBoolean:true withJavaUtilLinkedHashMap:props]];
          [[[callback getValue] getCallable] callWithSMBlockInterpreter:interpeter withJavaUtilList:[JavaUtilCollections singletonListWithId:simiResponse] withBoolean:false];
      }];
    [task resume];
    return nil;
}

@end
