//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiNativeClass.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiNativeClass")
#ifdef RESTRICT_NetGlobulusSimiSimiNativeClass
#define INCLUDE_ALL_NetGlobulusSimiSimiNativeClass 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiNativeClass 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiNativeClass

#if !defined (NetGlobulusSimiSimiNativeClass_) && (INCLUDE_ALL_NetGlobulusSimiSimiNativeClass || defined(INCLUDE_NetGlobulusSimiSimiNativeClass))
#define NetGlobulusSimiSimiNativeClass_

@protocol JavaUtilMap;

@interface NetGlobulusSimiSimiNativeClass : NSObject {
 @public
  NSString *name_;
  id<JavaUtilMap> methods_;
}

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)name
                 withJavaUtilMap:(id<JavaUtilMap>)methods;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetGlobulusSimiSimiNativeClass)

J2OBJC_FIELD_SETTER(NetGlobulusSimiSimiNativeClass, name_, NSString *)
J2OBJC_FIELD_SETTER(NetGlobulusSimiSimiNativeClass, methods_, id<JavaUtilMap>)

FOUNDATION_EXPORT void NetGlobulusSimiSimiNativeClass_initWithNSString_withJavaUtilMap_(NetGlobulusSimiSimiNativeClass *self, NSString *name, id<JavaUtilMap> methods);

FOUNDATION_EXPORT NetGlobulusSimiSimiNativeClass *new_NetGlobulusSimiSimiNativeClass_initWithNSString_withJavaUtilMap_(NSString *name, id<JavaUtilMap> methods) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetGlobulusSimiSimiNativeClass *create_NetGlobulusSimiSimiNativeClass_initWithNSString_withJavaUtilMap_(NSString *name, id<JavaUtilMap> methods);

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiSimiNativeClass)

#endif

#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiNativeClass")