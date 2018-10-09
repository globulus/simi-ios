//
//  Net.m
//  SimiNet
//
//  Created by Gordan Glavaš on 30/06/2018.
//  Copyright © 2018 Gordan Glavaš. All rights reserved.
//

#import "SM_Net.h"

#import "SimiCallable.h"
#import "java/util/LinkedHashMap.h"
#import "java/util/Collections.h"

@interface SM_Net()

+ (SMSimiValue *)performRequestWithVerb:(NSString *) verb
                                 sender:(id<SMSimiObject>)sender
                            interpreter:(id<SMBlockInterpreter>)interpeter
                                request:(id<SMSimiProperty>)request
                               callback:(id<SMSimiProperty>)callback;

@end

@implementation SM_Net

+ (SMSimiValue *)get:(id<SMSimiObject>)sender
         interpreter:(id<SMBlockInterpreter>)interpeter
             request:(id<SMSimiProperty>)request
            callback:(id<SMSimiProperty>)callback {
    return [SM_Net performRequestWithVerb:@"GET" sender:sender interpreter:interpeter request:request callback:callback];
}

+ (SMSimiValue *)post:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
              request:(id<SMSimiProperty>)request
             callback:(id<SMSimiProperty>)callback {
    return [SM_Net performRequestWithVerb:@"POST" sender:sender interpreter:interpeter request:request callback:callback];
}

+ (SMSimiValue *)put:(id<SMSimiObject>)sender
          interpreter:(id<SMBlockInterpreter>)interpeter
              request:(id<SMSimiProperty>)request
             callback:(id<SMSimiProperty>)callback {
    return [SM_Net performRequestWithVerb:@"PUT" sender:sender interpreter:interpeter request:request callback:callback];
}

+ (SMSimiValue *)delete:(id<SMSimiObject>)sender
         interpreter:(id<SMBlockInterpreter>)interpeter
             request:(id<SMSimiProperty>)request
            callback:(id<SMSimiProperty>)callback {
    return [SM_Net performRequestWithVerb:@"DELETE" sender:sender interpreter:interpeter request:request callback:callback];
}

+ (SMSimiValue *)performRequestWithVerb:(NSString *)verb
                                 sender:(id<SMSimiObject>)sender
                            interpreter:(id<SMBlockInterpreter>)interpeter
                                request:(id<SMSimiProperty>)request
                               callback:(id<SMSimiProperty>)callback {
    id<SMSimiObject> object = [[request getValue] getObject];
    id<SMSimiEnvironment> env = [interpeter getEnvironment];
    
    NSMutableURLRequest *req = [[NSMutableURLRequest alloc] init];
    [req setURL:[NSURL URLWithString:[[[object getWithNSString:@"url" withSMSimiEnvironment:env] getValue] getString]]];
    [req setHTTPMethod:verb];
    if ([verb isEqualToString:@"PUT"] || [verb isEqualToString:@"POST"]) {
        [req setHTTPBody:[[[[object getWithNSString:@"json" withSMSimiEnvironment:env] getValue] getString] dataUsingEncoding:NSUTF8StringEncoding]];
        [req setValue:@"text/plain" forHTTPHeaderField:@"Content-Type"];
    }
    id<SMSimiObject> headers = [[[object getWithNSString:@"headers" withSMSimiEnvironment:env] getValue] getObject];
    for (SMSimiValue *header in [headers keys] ) {
        [req setValue:[[[headers getWithNSString:[header getString] withSMSimiEnvironment:env] getValue] getString] forHTTPHeaderField:[header getString]];
    }
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:req
                                            completionHandler:
                                  ^(NSData *data, NSURLResponse *response, NSError *error) {
                                      NSLog(@"NET %@ GOT RESPONSE", verb);
                                      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                      JavaUtilLinkedHashMap *props = [[JavaUtilLinkedHashMap alloc] init];
                                      [props putWithId:@"code" withId:[[SMSimiValue_Number alloc] initWithLong:httpResponse.statusCode]];
                                      [props putWithId:@"body" withId:[[SMSimiValue_String alloc] initWithNSString:[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]]];
                                      SMSimiValue *simiResponse = [[SMSimiValue_Object alloc] initWithSMSimiObject:[interpeter newObjectWithBoolean:true withJavaUtilLinkedHashMap:props]];
                                      dispatch_async(dispatch_get_main_queue(), ^{
                                          [[[callback getValue] getCallable] callWithSMBlockInterpreter:interpeter withSMSimiEnvironment:nil withJavaUtilList:[JavaUtilCollections singletonListWithId:simiResponse] withBoolean:false];
                                      });
                                  }];
    [task resume];
    return nil;
}

@end
