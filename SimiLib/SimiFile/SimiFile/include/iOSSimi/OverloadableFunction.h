//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/OverloadableFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiOverloadableFunction")
#ifdef RESTRICT_NetGlobulusSimiOverloadableFunction
#define INCLUDE_ALL_NetGlobulusSimiOverloadableFunction 0
#else
#define INCLUDE_ALL_NetGlobulusSimiOverloadableFunction 1
#endif
#undef RESTRICT_NetGlobulusSimiOverloadableFunction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMOverloadableFunction_) && (INCLUDE_ALL_NetGlobulusSimiOverloadableFunction || defined(INCLUDE_SMOverloadableFunction))
#define SMOverloadableFunction_

@interface SMOverloadableFunction : NSObject {
 @public
  NSString *name_;
  jint arity_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)arity;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMOverloadableFunction)

J2OBJC_FIELD_SETTER(SMOverloadableFunction, name_, NSString *)

FOUNDATION_EXPORT void SMOverloadableFunction_initWithNSString_withInt_(SMOverloadableFunction *self, NSString *name, jint arity);

FOUNDATION_EXPORT SMOverloadableFunction *new_SMOverloadableFunction_initWithNSString_withInt_(NSString *name, jint arity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMOverloadableFunction *create_SMOverloadableFunction_initWithNSString_withInt_(NSString *name, jint arity);

J2OBJC_TYPE_LITERAL_HEADER(SMOverloadableFunction)

@compatibility_alias NetGlobulusSimiOverloadableFunction SMOverloadableFunction;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiOverloadableFunction")
