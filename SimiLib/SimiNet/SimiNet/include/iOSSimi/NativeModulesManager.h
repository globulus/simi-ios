//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/NativeModulesManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiNativeModulesManager")
#ifdef RESTRICT_NetGlobulusSimiNativeModulesManager
#define INCLUDE_ALL_NetGlobulusSimiNativeModulesManager 0
#else
#define INCLUDE_ALL_NetGlobulusSimiNativeModulesManager 1
#endif
#undef RESTRICT_NetGlobulusSimiNativeModulesManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMNativeModulesManager_) && (INCLUDE_ALL_NetGlobulusSimiNativeModulesManager || defined(INCLUDE_SMNativeModulesManager))
#define SMNativeModulesManager_

@class SMInterpreter;
@protocol JavaUtilList;
@protocol SMSimiObject;
@protocol SMSimiProperty;

@protocol SMNativeModulesManager < JavaObject >

- (void)load__WithNSString:(NSString *)path
               withBoolean:(jboolean)useApiClassName;

- (id<SMSimiProperty>)callWithNSString:(NSString *)className_
                          withNSString:(NSString *)methodName
                      withSMSimiObject:(id<SMSimiObject>)self_
                     withSMInterpreter:(SMInterpreter *)interpreter
                      withJavaUtilList:(id<JavaUtilList>)args;

@end

J2OBJC_EMPTY_STATIC_INIT(SMNativeModulesManager)

J2OBJC_TYPE_LITERAL_HEADER(SMNativeModulesManager)

#define NetGlobulusSimiNativeModulesManager SMNativeModulesManager

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiNativeModulesManager")
