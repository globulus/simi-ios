//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/RuntimeError.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiRuntimeError")
#ifdef RESTRICT_NetGlobulusSimiRuntimeError
#define INCLUDE_ALL_NetGlobulusSimiRuntimeError 0
#else
#define INCLUDE_ALL_NetGlobulusSimiRuntimeError 1
#endif
#undef RESTRICT_NetGlobulusSimiRuntimeError

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMRuntimeError_) && (INCLUDE_ALL_NetGlobulusSimiRuntimeError || defined(INCLUDE_SMRuntimeError))
#define SMRuntimeError_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@class JavaLangThrowable;
@class SMToken;

@interface SMRuntimeError : JavaLangRuntimeException {
 @public
  SMToken *token_;
}

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)token
                             withNSString:(NSString *)message;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMRuntimeError)

J2OBJC_FIELD_SETTER(SMRuntimeError, token_, SMToken *)

FOUNDATION_EXPORT void SMRuntimeError_initWithSMToken_withNSString_(SMRuntimeError *self, SMToken *token, NSString *message);

FOUNDATION_EXPORT SMRuntimeError *new_SMRuntimeError_initWithSMToken_withNSString_(SMToken *token, NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMRuntimeError *create_SMRuntimeError_initWithSMToken_withNSString_(SMToken *token, NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(SMRuntimeError)

@compatibility_alias NetGlobulusSimiRuntimeError SMRuntimeError;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiRuntimeError")