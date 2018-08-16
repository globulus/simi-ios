//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/BaseClassesNativeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiBaseClassesNativeImpl")
#ifdef RESTRICT_NetGlobulusSimiBaseClassesNativeImpl
#define INCLUDE_ALL_NetGlobulusSimiBaseClassesNativeImpl 0
#else
#define INCLUDE_ALL_NetGlobulusSimiBaseClassesNativeImpl 1
#endif
#undef RESTRICT_NetGlobulusSimiBaseClassesNativeImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMBaseClassesNativeImpl_) && (INCLUDE_ALL_NetGlobulusSimiBaseClassesNativeImpl || defined(INCLUDE_SMBaseClassesNativeImpl))
#define SMBaseClassesNativeImpl_

@class SMSimiNativeClass;
@protocol SMSimiCallable;

@interface SMBaseClassesNativeImpl : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)init;

- (SMSimiNativeClass *)getWithNSString:(NSString *)className_;

- (id<SMSimiCallable>)getWithNSString:(NSString *)className_
                         withNSString:(NSString *)methodName
                              withInt:(jint)arity;

@end

J2OBJC_EMPTY_STATIC_INIT(SMBaseClassesNativeImpl)

FOUNDATION_EXPORT void SMBaseClassesNativeImpl_init(SMBaseClassesNativeImpl *self);

FOUNDATION_EXPORT SMBaseClassesNativeImpl *new_SMBaseClassesNativeImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMBaseClassesNativeImpl *create_SMBaseClassesNativeImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(SMBaseClassesNativeImpl)

@compatibility_alias NetGlobulusSimiBaseClassesNativeImpl SMBaseClassesNativeImpl;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiBaseClassesNativeImpl")
