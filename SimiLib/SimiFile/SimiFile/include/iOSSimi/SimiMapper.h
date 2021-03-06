//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiMapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimiMapper")
#ifdef RESTRICT_NetGlobulusSimiSimiMapper
#define INCLUDE_ALL_NetGlobulusSimiSimiMapper 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimiMapper 1
#endif
#undef RESTRICT_NetGlobulusSimiSimiMapper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimiMapper_) && (INCLUDE_ALL_NetGlobulusSimiSimiMapper || defined(INCLUDE_SMSimiMapper))
#define SMSimiMapper_

@class SMSimiValue;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol SMBlockInterpreter;
@protocol SMSimiObject;
@protocol SMSimiProperty;

@interface SMSimiMapper : NSObject

#pragma mark Public

+ (id<JavaUtilList>)fromArrayWithSMSimiObject:(id<SMSimiObject>)object;

+ (id<JavaUtilMap>)fromObjectWithSMSimiObject:(id<SMSimiObject>)object;

+ (id)fromSimiValueWithSMSimiValue:(SMSimiValue *)value;

+ (id<SMSimiObject>)toObjectWithJavaUtilList:(id<JavaUtilList>)list
                                 withBoolean:(jboolean)immutable;

+ (id<SMSimiObject>)toObjectWithJavaUtilList:(id<JavaUtilList>)list
                                 withBoolean:(jboolean)immutable
                      withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter;

+ (id<SMSimiObject>)toObjectWithJavaUtilMap:(id<JavaUtilMap>)map
                                withBoolean:(jboolean)immutable;

+ (id<SMSimiObject>)toObjectWithJavaUtilMap:(id<JavaUtilMap>)map
                                withBoolean:(jboolean)immutable
                     withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter;

+ (id<SMSimiProperty>)toSimiPropertyWithId:(id)value;

+ (id<SMSimiProperty>)toSimiPropertyWithId:(id)value
                    withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter;

@end

J2OBJC_EMPTY_STATIC_INIT(SMSimiMapper)

FOUNDATION_EXPORT id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_(id<JavaUtilMap> map, jboolean immutable);

FOUNDATION_EXPORT id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMBlockInterpreter_(id<JavaUtilMap> map, jboolean immutable, id<SMBlockInterpreter> interpreter);

FOUNDATION_EXPORT id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilList_withBoolean_(id<JavaUtilList> list, jboolean immutable);

FOUNDATION_EXPORT id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMBlockInterpreter_(id<JavaUtilList> list, jboolean immutable, id<SMBlockInterpreter> interpreter);

FOUNDATION_EXPORT id<JavaUtilMap> SMSimiMapper_fromObjectWithSMSimiObject_(id<SMSimiObject> object);

FOUNDATION_EXPORT id<JavaUtilList> SMSimiMapper_fromArrayWithSMSimiObject_(id<SMSimiObject> object);

FOUNDATION_EXPORT id<SMSimiProperty> SMSimiMapper_toSimiPropertyWithId_(id value);

FOUNDATION_EXPORT id<SMSimiProperty> SMSimiMapper_toSimiPropertyWithId_withSMBlockInterpreter_(id value, id<SMBlockInterpreter> interpreter);

FOUNDATION_EXPORT id SMSimiMapper_fromSimiValueWithSMSimiValue_(SMSimiValue *value);

J2OBJC_TYPE_LITERAL_HEADER(SMSimiMapper)

@compatibility_alias NetGlobulusSimiSimiMapper SMSimiMapper;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimiMapper")
