//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiApiClass.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiApiClass")
#ifdef RESTRICT_NetGlobulusSimiSimiApiClass
#define INCLUDE_ALL_NetGlobulusSimiSimiApiClass 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiApiClass 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiApiClass

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimiApiClass_) && (INCLUDE_ALL_NetGlobulusSimiSimiApiClass || defined(INCLUDE_SMSimiApiClass))
#define SMSimiApiClass_

@class IOSObjectArray;
@protocol JavaUtilList;
@protocol SMBlockInterpreter;
@protocol SMSimiObject;
@protocol SMSimiProperty;

@protocol SMSimiApiClass < JavaObject >

- (id<SMSimiProperty>)callWithNSString:(NSString *)className_
                          withNSString:(NSString *)methodName
                      withSMSimiObject:(id<SMSimiObject>)self_
                withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter
                      withJavaUtilList:(id<JavaUtilList>)args;

- (IOSObjectArray *)classNames;

- (IOSObjectArray *)globalMethodNames;

@end

J2OBJC_EMPTY_STATIC_INIT(SMSimiApiClass)

J2OBJC_TYPE_LITERAL_HEADER(SMSimiApiClass)

#define NetGlobulusSimiSimiApiClass SMSimiApiClass

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiApiClass")
