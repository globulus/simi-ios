//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiCallable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiCallable")
#ifdef RESTRICT_NetGlobulusSimiSimiCallable
#define INCLUDE_ALL_NetGlobulusSimiSimiCallable 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiCallable 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiCallable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimiCallable_) && (INCLUDE_ALL_NetGlobulusSimiSimiCallable || defined(INCLUDE_SMSimiCallable))
#define SMSimiCallable_

#define RESTRICT_NetGlobulusSimiCodifiable 1
#define INCLUDE_SMCodifiable 1
#include "Codifiable.h"

@protocol JavaUtilList;
@protocol SMBlockInterpreter;
@protocol SMSimiProperty;

@protocol SMSimiCallable < SMCodifiable, JavaObject >

- (jint)arity;

- (id<SMSimiProperty>)callWithSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter
                                withJavaUtilList:(id<JavaUtilList>)arguments
                                     withBoolean:(jboolean)rethrow;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

@end

J2OBJC_EMPTY_STATIC_INIT(SMSimiCallable)

FOUNDATION_EXPORT NSString *SMSimiCallable_toCodeWithInt_withBoolean_(id<SMSimiCallable> self, jint indentationLevel, jboolean ignoreFirst);

FOUNDATION_EXPORT jint SMSimiCallable_getLineNumber(id<SMSimiCallable> self);

FOUNDATION_EXPORT jboolean SMSimiCallable_hasBreakPoint(id<SMSimiCallable> self);

J2OBJC_TYPE_LITERAL_HEADER(SMSimiCallable)

#define NetGlobulusSimiSimiCallable SMSimiCallable

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiCallable")
