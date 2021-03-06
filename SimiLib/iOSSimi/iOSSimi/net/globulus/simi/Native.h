//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Native.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiNative")
#ifdef RESTRICT_NetGlobulusSimiNative
#define INCLUDE_ALL_NetGlobulusSimiNative 0
#else
#define INCLUDE_ALL_NetGlobulusSimiNative 1
#endif
#undef RESTRICT_NetGlobulusSimiNative

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMNative_) && (INCLUDE_ALL_NetGlobulusSimiNative || defined(INCLUDE_SMNative))
#define SMNative_

#define RESTRICT_NetGlobulusSimiSimiValue 1
#define INCLUDE_SMSimiValue 1
#include "SimiValue.h"

@interface SMNative : SMSimiValue

#pragma mark Public

- (SMSimiValue *)cloneWithBoolean:(jboolean)mutable_;

- (jint)compareToWithId:(SMSimiValue *)o;

- (SMSimiValue *)copy__ OBJC_METHOD_FAMILY_NONE;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(SMNative)

FOUNDATION_EXPORT void SMNative_init(SMNative *self);

FOUNDATION_EXPORT SMNative *new_SMNative_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMNative *create_SMNative_init(void);

J2OBJC_TYPE_LITERAL_HEADER(SMNative)

@compatibility_alias NetGlobulusSimiNative SMNative;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiNative")
