//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiMethod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiMethod")
#ifdef RESTRICT_NetGlobulusSimiSimiMethod
#define INCLUDE_ALL_NetGlobulusSimiSimiMethod 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiMethod 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiMethod

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimiMethod_) && (INCLUDE_ALL_NetGlobulusSimiSimiMethod || defined(INCLUDE_SMSimiMethod))
#define SMSimiMethod_

#define RESTRICT_NetGlobulusSimiSimiCallable 1
#define INCLUDE_SMSimiCallable 1
#include "SimiCallable.h"

@class SMSimiClassImpl;
@class SMSimiFunction;
@protocol JavaUtilList;
@protocol SMBlockInterpreter;
@protocol SMSimiProperty;

@interface SMSimiMethod : NSObject < SMSimiCallable > {
 @public
  SMSimiClassImpl *clazz_;
  SMSimiFunction *function_;
}

#pragma mark Public

- (jint)arity;

- (id<SMSimiProperty>)callWithSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter
                                withJavaUtilList:(id<JavaUtilList>)arguments
                                     withBoolean:(jboolean)rethrow;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMSimiClassImpl:(SMSimiClassImpl *)clazz
                               withSMSimiFunction:(SMSimiFunction *)function;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMSimiMethod)

J2OBJC_FIELD_SETTER(SMSimiMethod, clazz_, SMSimiClassImpl *)
J2OBJC_FIELD_SETTER(SMSimiMethod, function_, SMSimiFunction *)

FOUNDATION_EXPORT void SMSimiMethod_initWithSMSimiClassImpl_withSMSimiFunction_(SMSimiMethod *self, SMSimiClassImpl *clazz, SMSimiFunction *function);

FOUNDATION_EXPORT SMSimiMethod *new_SMSimiMethod_initWithSMSimiClassImpl_withSMSimiFunction_(SMSimiClassImpl *clazz, SMSimiFunction *function) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMSimiMethod *create_SMSimiMethod_initWithSMSimiClassImpl_withSMSimiFunction_(SMSimiClassImpl *clazz, SMSimiFunction *function);

J2OBJC_TYPE_LITERAL_HEADER(SMSimiMethod)

@compatibility_alias NetGlobulusSimiSimiMethod SMSimiMethod;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiMethod")
