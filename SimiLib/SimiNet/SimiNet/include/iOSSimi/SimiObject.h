//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiObject.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiObject")
#ifdef RESTRICT_NetGlobulusSimiSimiObject
#define INCLUDE_ALL_NetGlobulusSimiSimiObject 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiObject 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimiObject_) && (INCLUDE_ALL_NetGlobulusSimiSimiObject || defined(INCLUDE_SMSimiObject))
#define SMSimiObject_

#define RESTRICT_NetGlobulusSimiCodifiable 1
#define INCLUDE_SMCodifiable 1
#include "Codifiable.h"

@protocol JavaUtilList;
@protocol SMSimiClass;
@protocol SMSimiEnvironment;
@protocol SMSimiProperty;

@protocol SMSimiObject < SMCodifiable, JavaObject >

- (id<SMSimiClass>)getSimiClass;

- (id<SMSimiProperty>)getWithNSString:(NSString *)key
                withSMSimiEnvironment:(id<SMSimiEnvironment>)environment;

- (void)setWithNSString:(NSString *)key
     withSMSimiProperty:(id<SMSimiProperty>)prop
  withSMSimiEnvironment:(id<SMSimiEnvironment>)environment;

- (id<SMSimiObject>)cloneWithBoolean:(jboolean)mutable_;

- (id<JavaUtilList>)keys;

- (id<JavaUtilList>)values;

@end

J2OBJC_EMPTY_STATIC_INIT(SMSimiObject)

J2OBJC_TYPE_LITERAL_HEADER(SMSimiObject)

#define NetGlobulusSimiSimiObject SMSimiObject

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiObject")