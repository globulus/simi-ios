//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiProperty.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiProperty")
#ifdef RESTRICT_NetGlobulusSimiSimiProperty
#define INCLUDE_ALL_NetGlobulusSimiSimiProperty 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiProperty 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiProperty

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimiProperty_) && (INCLUDE_ALL_NetGlobulusSimiSimiProperty || defined(INCLUDE_SMSimiProperty))
#define SMSimiProperty_

@class SMSimiValue;
@protocol JavaUtilList;

@protocol SMSimiProperty < JavaObject >

- (SMSimiValue *)getValue;

- (void)setValueWithSMSimiValue:(SMSimiValue *)value;

- (id<JavaUtilList>)getAnnotations;

- (id<SMSimiProperty>)cloneWithBoolean:(jboolean)mutable_;

@end

J2OBJC_EMPTY_STATIC_INIT(SMSimiProperty)

J2OBJC_TYPE_LITERAL_HEADER(SMSimiProperty)

#define NetGlobulusSimiSimiProperty SMSimiProperty

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiProperty")
