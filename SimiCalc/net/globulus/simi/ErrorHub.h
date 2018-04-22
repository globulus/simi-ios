//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/ErrorHub.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiErrorHub")
#ifdef RESTRICT_NetGlobulusSimiErrorHub
#define INCLUDE_ALL_NetGlobulusSimiErrorHub 0
#else
#define INCLUDE_ALL_NetGlobulusSimiErrorHub 1
#endif
#undef RESTRICT_NetGlobulusSimiErrorHub

#if !defined (NetGlobulusSimiErrorHub_) && (INCLUDE_ALL_NetGlobulusSimiErrorHub || defined(INCLUDE_NetGlobulusSimiErrorHub))
#define NetGlobulusSimiErrorHub_

@class NetGlobulusSimiRuntimeError;
@class NetGlobulusSimiToken;
@protocol NetGlobulusSimiErrorWatcher;

@interface NetGlobulusSimiErrorHub : NSObject

#pragma mark Package-Private

- (void)addWatcherWithNetGlobulusSimiErrorWatcher:(id<NetGlobulusSimiErrorWatcher>)watcher;

- (void)errorWithInt:(jint)line
        withNSString:(NSString *)message;

- (void)errorWithNetGlobulusSimiToken:(NetGlobulusSimiToken *)token
                         withNSString:(NSString *)message;

- (void)removeWatcherWithNetGlobulusSimiErrorWatcher:(id<NetGlobulusSimiErrorWatcher>)watcher;

- (void)reportWithInt:(jint)line
         withNSString:(NSString *)where
         withNSString:(NSString *)message;

- (void)runtimeErrorWithNetGlobulusSimiRuntimeError:(NetGlobulusSimiRuntimeError *)error;

+ (NetGlobulusSimiErrorHub *)sharedInstance;

@end

J2OBJC_STATIC_INIT(NetGlobulusSimiErrorHub)

FOUNDATION_EXPORT NetGlobulusSimiErrorHub *NetGlobulusSimiErrorHub_sharedInstance(void);

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiErrorHub)

#endif

#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiErrorHub")