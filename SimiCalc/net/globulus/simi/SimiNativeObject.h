//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiNativeObject.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiNativeObject")
#ifdef RESTRICT_NetGlobulusSimiSimiNativeObject
#define INCLUDE_ALL_NetGlobulusSimiSimiNativeObject 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiNativeObject 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiNativeObject

#if !defined (NetGlobulusSimiSimiNativeObject_) && (INCLUDE_ALL_NetGlobulusSimiSimiNativeObject || defined(INCLUDE_NetGlobulusSimiSimiNativeObject))
#define NetGlobulusSimiSimiNativeObject_

#define RESTRICT_NetGlobulusSimiSimiObjectImpl 1
#define INCLUDE_NetGlobulusSimiSimiObjectImpl_Dictionary 1
#include "SimiObjectImpl.h"

@class JavaUtilLinkedHashMap;
@class NetGlobulusSimiSimiClassImpl;

@interface NetGlobulusSimiSimiNativeObject : NetGlobulusSimiSimiObjectImpl_Dictionary

#pragma mark Package-Private

- (instancetype)initWithJavaUtilLinkedHashMap:(JavaUtilLinkedHashMap *)props;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNetGlobulusSimiSimiClassImpl:(NetGlobulusSimiSimiClassImpl *)arg0
                                         withBoolean:(jboolean)arg1
                           withJavaUtilLinkedHashMap:(JavaUtilLinkedHashMap *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetGlobulusSimiSimiNativeObject)

FOUNDATION_EXPORT void NetGlobulusSimiSimiNativeObject_initWithJavaUtilLinkedHashMap_(NetGlobulusSimiSimiNativeObject *self, JavaUtilLinkedHashMap *props);

FOUNDATION_EXPORT NetGlobulusSimiSimiNativeObject *new_NetGlobulusSimiSimiNativeObject_initWithJavaUtilLinkedHashMap_(JavaUtilLinkedHashMap *props) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetGlobulusSimiSimiNativeObject *create_NetGlobulusSimiSimiNativeObject_initWithJavaUtilLinkedHashMap_(JavaUtilLinkedHashMap *props);

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiSimiNativeObject)

#endif

#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiNativeObject")