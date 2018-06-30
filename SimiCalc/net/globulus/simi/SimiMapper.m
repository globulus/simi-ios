//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiMapper.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/function/Function.h"
#include "java/util/stream/Collector.h"
#include "java/util/stream/Collectors.h"
#include "java/util/stream/Stream.h"
#include "ActiveSimi.h"
#include "BlockInterpreter.h"
#include "Constants.h"
#include "SimiClassImpl.h"
#include "SimiMapper.h"
#include "SimiObject.h"
#include "SimiObjectImpl.h"
#include "SimiProperty.h"
#include "SimiValue.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface SMSimiMapper ()

- (instancetype __nonnull)init;

+ (id<SMSimiObject>)toObjectWithJavaUtilMap:(id<JavaUtilMap>)map
                                withBoolean:(jboolean)immutable
                        withSMSimiClassImpl:(SMSimiClassImpl *)objectClass;

+ (id<SMSimiObject>)toObjectWithJavaUtilList:(id<JavaUtilList>)list
                                 withBoolean:(jboolean)immutable
                         withSMSimiClassImpl:(SMSimiClassImpl *)objectClass;

+ (id<SMSimiProperty>)toSimiPropertyWithId:(id)value
                       withSMSimiClassImpl:(SMSimiClassImpl *)objectClass;

+ (SMSimiClassImpl *)getObjectClassWithSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter;

@end

__attribute__((unused)) static void SMSimiMapper_init(SMSimiMapper *self);

__attribute__((unused)) static SMSimiMapper *new_SMSimiMapper_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static SMSimiMapper *create_SMSimiMapper_init(void);

__attribute__((unused)) static id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMSimiClassImpl_(id<JavaUtilMap> map, jboolean immutable, SMSimiClassImpl *objectClass);

__attribute__((unused)) static id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMSimiClassImpl_(id<JavaUtilList> list, jboolean immutable, SMSimiClassImpl *objectClass);

__attribute__((unused)) static id<SMSimiProperty> SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_(id value, SMSimiClassImpl *objectClass);

__attribute__((unused)) static SMSimiClassImpl *SMSimiMapper_getObjectClassWithSMBlockInterpreter_(id<SMBlockInterpreter> interpreter);

@interface SMSimiMapper_$Lambda$1 : NSObject < JavaUtilFunctionFunction >

- (id)applyWithId:(id<SMSimiProperty>)a;

@end

J2OBJC_STATIC_INIT(SMSimiMapper_$Lambda$1)

inline SMSimiMapper_$Lambda$1 *SMSimiMapper_$Lambda$1_get_instance(void);
static SMSimiMapper_$Lambda$1 *SMSimiMapper_$Lambda$1_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(SMSimiMapper_$Lambda$1, instance, SMSimiMapper_$Lambda$1 *)

__attribute__((unused)) static void SMSimiMapper_$Lambda$1_init(SMSimiMapper_$Lambda$1 *self);

__attribute__((unused)) static SMSimiMapper_$Lambda$1 *new_SMSimiMapper_$Lambda$1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static SMSimiMapper_$Lambda$1 *create_SMSimiMapper_$Lambda$1_init(void);

@interface SMSimiMapper_$Lambda$2 : NSObject < JavaUtilFunctionFunction >

- (id)applyWithId:(SMSimiValue *)a;

@end

J2OBJC_STATIC_INIT(SMSimiMapper_$Lambda$2)

inline SMSimiMapper_$Lambda$2 *SMSimiMapper_$Lambda$2_get_instance(void);
static SMSimiMapper_$Lambda$2 *SMSimiMapper_$Lambda$2_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(SMSimiMapper_$Lambda$2, instance, SMSimiMapper_$Lambda$2 *)

__attribute__((unused)) static void SMSimiMapper_$Lambda$2_init(SMSimiMapper_$Lambda$2 *self);

__attribute__((unused)) static SMSimiMapper_$Lambda$2 *new_SMSimiMapper_$Lambda$2_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static SMSimiMapper_$Lambda$2 *create_SMSimiMapper_$Lambda$2_init(void);

@implementation SMSimiMapper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  SMSimiMapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<SMSimiObject>)toObjectWithJavaUtilMap:(id<JavaUtilMap>)map
                                withBoolean:(jboolean)immutable {
  return SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_(map, immutable);
}

+ (id<SMSimiObject>)toObjectWithJavaUtilMap:(id<JavaUtilMap>)map
                                withBoolean:(jboolean)immutable
                     withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter {
  return SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMBlockInterpreter_(map, immutable, interpreter);
}

+ (id<SMSimiObject>)toObjectWithJavaUtilMap:(id<JavaUtilMap>)map
                                withBoolean:(jboolean)immutable
                        withSMSimiClassImpl:(SMSimiClassImpl *)objectClass {
  return SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMSimiClassImpl_(map, immutable, objectClass);
}

+ (id<SMSimiObject>)toObjectWithJavaUtilList:(id<JavaUtilList>)list
                                 withBoolean:(jboolean)immutable {
  return SMSimiMapper_toObjectWithJavaUtilList_withBoolean_(list, immutable);
}

+ (id<SMSimiObject>)toObjectWithJavaUtilList:(id<JavaUtilList>)list
                                 withBoolean:(jboolean)immutable
                      withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter {
  return SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMBlockInterpreter_(list, immutable, interpreter);
}

+ (id<SMSimiObject>)toObjectWithJavaUtilList:(id<JavaUtilList>)list
                                 withBoolean:(jboolean)immutable
                         withSMSimiClassImpl:(SMSimiClassImpl *)objectClass {
  return SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMSimiClassImpl_(list, immutable, objectClass);
}

+ (id<JavaUtilMap>)fromObjectWithSMSimiObject:(id<SMSimiObject>)object {
  return SMSimiMapper_fromObjectWithSMSimiObject_(object);
}

+ (id<JavaUtilList>)fromArrayWithSMSimiObject:(id<SMSimiObject>)object {
  return SMSimiMapper_fromArrayWithSMSimiObject_(object);
}

+ (id<SMSimiProperty>)toSimiPropertyWithId:(id)value {
  return SMSimiMapper_toSimiPropertyWithId_(value);
}

+ (id<SMSimiProperty>)toSimiPropertyWithId:(id)value
                    withSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter {
  return SMSimiMapper_toSimiPropertyWithId_withSMBlockInterpreter_(value, interpreter);
}

+ (id<SMSimiProperty>)toSimiPropertyWithId:(id)value
                       withSMSimiClassImpl:(SMSimiClassImpl *)objectClass {
  return SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_(value, objectClass);
}

+ (id)fromSimiValueWithSMSimiValue:(SMSimiValue *)value {
  return SMSimiMapper_fromSimiValueWithSMSimiValue_(value);
}

+ (SMSimiClassImpl *)getObjectClassWithSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter {
  return SMSimiMapper_getObjectClassWithSMBlockInterpreter_(interpreter);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMSimiObject;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LSMSimiObject;", 0x9, 0, 3, -1, 4, -1, -1 },
    { NULL, "LSMSimiObject;", 0xa, 0, 5, -1, 6, -1, -1 },
    { NULL, "LSMSimiObject;", 0x9, 0, 7, -1, 8, -1, -1 },
    { NULL, "LSMSimiObject;", 0x9, 0, 9, -1, 10, -1, -1 },
    { NULL, "LSMSimiObject;", 0xa, 0, 11, -1, 12, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x9, 13, 14, -1, 15, -1, -1 },
    { NULL, "LJavaUtilList;", 0x9, 16, 14, -1, 17, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x9, 18, 19, -1, -1, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x9, 18, 20, -1, -1, -1, -1 },
    { NULL, "LSMSimiProperty;", 0xa, 18, 21, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 22, 23, -1, -1, -1, -1 },
    { NULL, "LSMSimiClassImpl;", 0xa, 24, 25, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toObjectWithJavaUtilMap:withBoolean:);
  methods[2].selector = @selector(toObjectWithJavaUtilMap:withBoolean:withSMBlockInterpreter:);
  methods[3].selector = @selector(toObjectWithJavaUtilMap:withBoolean:withSMSimiClassImpl:);
  methods[4].selector = @selector(toObjectWithJavaUtilList:withBoolean:);
  methods[5].selector = @selector(toObjectWithJavaUtilList:withBoolean:withSMBlockInterpreter:);
  methods[6].selector = @selector(toObjectWithJavaUtilList:withBoolean:withSMSimiClassImpl:);
  methods[7].selector = @selector(fromObjectWithSMSimiObject:);
  methods[8].selector = @selector(fromArrayWithSMSimiObject:);
  methods[9].selector = @selector(toSimiPropertyWithId:);
  methods[10].selector = @selector(toSimiPropertyWithId:withSMBlockInterpreter:);
  methods[11].selector = @selector(toSimiPropertyWithId:withSMSimiClassImpl:);
  methods[12].selector = @selector(fromSimiValueWithSMSimiValue:);
  methods[13].selector = @selector(getObjectClassWithSMBlockInterpreter:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toObject", "LJavaUtilMap;Z", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Z)LSimiObject;", "LJavaUtilMap;ZLSMBlockInterpreter;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;ZLBlockInterpreter;)LSimiObject;", "LJavaUtilMap;ZLSMSimiClassImpl;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;ZLSimiClassImpl;)LSimiObject;", "LJavaUtilList;Z", "(Ljava/util/List<Ljava/lang/Object;>;Z)LSimiObject;", "LJavaUtilList;ZLSMBlockInterpreter;", "(Ljava/util/List<Ljava/lang/Object;>;ZLBlockInterpreter;)LSimiObject;", "LJavaUtilList;ZLSMSimiClassImpl;", "(Ljava/util/List<Ljava/lang/Object;>;ZLSimiClassImpl;)LSimiObject;", "fromObject", "LSMSimiObject;", "(LSimiObject;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;", "fromArray", "(LSimiObject;)Ljava/util/List<Ljava/lang/Object;>;", "toSimiProperty", "LNSObject;", "LNSObject;LSMBlockInterpreter;", "LNSObject;LSMSimiClassImpl;", "fromSimiValue", "LSMSimiValue;", "getObjectClass", "LSMBlockInterpreter;" };
  static const J2ObjcClassInfo _SMSimiMapper = { "SimiMapper", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x1, 14, 0, -1, -1, -1, -1, -1 };
  return &_SMSimiMapper;
}

@end

void SMSimiMapper_init(SMSimiMapper *self) {
  NSObject_init(self);
}

SMSimiMapper *new_SMSimiMapper_init() {
  J2OBJC_NEW_IMPL(SMSimiMapper, init)
}

SMSimiMapper *create_SMSimiMapper_init() {
  J2OBJC_CREATE_IMPL(SMSimiMapper, init)
}

id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_(id<JavaUtilMap> map, jboolean immutable) {
  SMSimiMapper_initialize();
  return SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMSimiClassImpl_(map, immutable, SMActiveSimi_getObjectClass());
}

id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMBlockInterpreter_(id<JavaUtilMap> map, jboolean immutable, id<SMBlockInterpreter> interpreter) {
  SMSimiMapper_initialize();
  return SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMSimiClassImpl_(map, immutable, SMSimiMapper_getObjectClassWithSMBlockInterpreter_(interpreter));
}

id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMSimiClassImpl_(id<JavaUtilMap> map, jboolean immutable, SMSimiClassImpl *objectClass) {
  SMSimiMapper_initialize();
  JavaUtilLinkedHashMap *propMap = new_JavaUtilLinkedHashMap_initWithInt_([((id<JavaUtilMap>) nil_chk(map)) size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([map entrySet])) {
    (void) [propMap putWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withId:SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_([entry_ getValue], objectClass)];
  }
  return new_SMSimiObjectImpl_Dictionary_initWithSMSimiClassImpl_withBoolean_withJavaUtilLinkedHashMap_(objectClass, immutable, propMap);
}

id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilList_withBoolean_(id<JavaUtilList> list, jboolean immutable) {
  SMSimiMapper_initialize();
  return SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMSimiClassImpl_(list, immutable, SMActiveSimi_getObjectClass());
}

id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMBlockInterpreter_(id<JavaUtilList> list, jboolean immutable, id<SMBlockInterpreter> interpreter) {
  SMSimiMapper_initialize();
  return SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMSimiClassImpl_(list, immutable, SMSimiMapper_getObjectClassWithSMBlockInterpreter_(interpreter));
}

id<SMSimiObject> SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMSimiClassImpl_(id<JavaUtilList> list, jboolean immutable, SMSimiClassImpl *objectClass) {
  SMSimiMapper_initialize();
  JavaUtilArrayList *propList = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilList>) nil_chk(list)) size]);
  for (id __strong item in list) {
    [propList addWithId:SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_(item, objectClass)];
  }
  return new_SMSimiObjectImpl_Array_initWithSMSimiClassImpl_withBoolean_withJavaUtilArrayList_(objectClass, immutable, propList);
}

id<JavaUtilMap> SMSimiMapper_fromObjectWithSMSimiObject_(id<SMSimiObject> object) {
  SMSimiMapper_initialize();
  if ([((SMSimiObjectImpl *) nil_chk(((SMSimiObjectImpl *) cast_chk(object, [SMSimiObjectImpl class])))) isArray]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Expected a dictionary object!");
  }
  SMSimiObjectImpl_Dictionary *dict;
  if ([object isKindOfClass:[SMSimiObjectImpl_Dictionary class]]) {
    dict = (SMSimiObjectImpl_Dictionary *) cast_chk(object, [SMSimiObjectImpl_Dictionary class]);
  }
  else {
    dict = [((SMSimiObjectImpl_InitiallyEmpty *) nil_chk(((SMSimiObjectImpl_InitiallyEmpty *) cast_chk(object, [SMSimiObjectImpl_InitiallyEmpty class])))) asDictionary];
  }
  id<JavaUtilMap> map = new_JavaUtilHashMap_initWithInt_([((JavaUtilLinkedHashMap *) nil_chk(((SMSimiObjectImpl_Dictionary *) nil_chk(dict))->fields_)) size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([dict->fields_ entrySet])) {
    (void) [map putWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withId:SMSimiMapper_fromSimiValueWithSMSimiValue_([((id<SMSimiProperty>) nil_chk([entry_ getValue])) getValue])];
  }
  return map;
}

id<JavaUtilList> SMSimiMapper_fromArrayWithSMSimiObject_(id<SMSimiObject> object) {
  SMSimiMapper_initialize();
  if (![((SMSimiObjectImpl *) nil_chk(((SMSimiObjectImpl *) cast_chk(object, [SMSimiObjectImpl class])))) isArray]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Expected an array object!");
  }
  SMSimiObjectImpl_Array *array;
  if ([object isKindOfClass:[SMSimiObjectImpl_Array class]]) {
    array = (SMSimiObjectImpl_Array *) cast_chk(object, [SMSimiObjectImpl_Array class]);
  }
  else {
    array = [((SMSimiObjectImpl_InitiallyEmpty *) nil_chk(((SMSimiObjectImpl_InitiallyEmpty *) cast_chk(object, [SMSimiObjectImpl_InitiallyEmpty class])))) asArray];
  }
  return [((id<JavaUtilStreamStream>) nil_chk([((id<JavaUtilStreamStream>) nil_chk([((id<JavaUtilStreamStream>) nil_chk([((JavaUtilArrayList *) nil_chk(((SMSimiObjectImpl_Array *) nil_chk(array))->fields_)) stream])) mapWithJavaUtilFunctionFunction:JreLoadStatic(SMSimiMapper_$Lambda$1, instance)])) mapWithJavaUtilFunctionFunction:JreLoadStatic(SMSimiMapper_$Lambda$2, instance)])) collectWithJavaUtilStreamCollector:JavaUtilStreamCollectors_toList()];
}

id<SMSimiProperty> SMSimiMapper_toSimiPropertyWithId_(id value) {
  SMSimiMapper_initialize();
  return SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_(value, SMActiveSimi_getObjectClass());
}

id<SMSimiProperty> SMSimiMapper_toSimiPropertyWithId_withSMBlockInterpreter_(id value, id<SMBlockInterpreter> interpreter) {
  SMSimiMapper_initialize();
  return SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_(value, SMSimiMapper_getObjectClassWithSMBlockInterpreter_(interpreter));
}

id<SMSimiProperty> SMSimiMapper_toSimiPropertyWithId_withSMSimiClassImpl_(id value, SMSimiClassImpl *objectClass) {
  SMSimiMapper_initialize();
  if ([value isKindOfClass:[JavaLangInteger class]]) {
    return new_SMSimiValue_Number_initWithDouble_([((JavaLangInteger *) nil_chk(((JavaLangInteger *) cast_chk(value, [JavaLangInteger class])))) doubleValue]);
  }
  else if ([value isKindOfClass:[JavaLangLong class]]) {
    return new_SMSimiValue_Number_initWithDouble_([((JavaLangLong *) nil_chk(((JavaLangLong *) cast_chk(value, [JavaLangLong class])))) doubleValue]);
  }
  else if ([value isKindOfClass:[JavaLangFloat class]]) {
    return new_SMSimiValue_Number_initWithDouble_([((JavaLangFloat *) nil_chk(((JavaLangFloat *) cast_chk(value, [JavaLangFloat class])))) doubleValue]);
  }
  else if ([value isKindOfClass:[JavaLangDouble class]]) {
    return new_SMSimiValue_Number_initWithDouble_([((JavaLangDouble *) nil_chk((JavaLangDouble *) cast_chk(value, [JavaLangDouble class]))) doubleValue]);
  }
  else if ([value isKindOfClass:[JavaLangBoolean class]]) {
    return new_SMSimiValue_Number_initWithDouble_([((JavaLangBoolean *) nil_chk((JavaLangBoolean *) cast_chk(value, [JavaLangBoolean class]))) booleanValue] ? 1 : 0);
  }
  else if ([value isKindOfClass:[NSString class]]) {
    return new_SMSimiValue_String_initWithNSString_((NSString *) cast_chk(value, [NSString class]));
  }
  else if ([JavaUtilMap_class_() isInstance:value]) {
    return new_SMSimiValue_Object_initWithSMSimiObject_(SMSimiMapper_toObjectWithJavaUtilMap_withBoolean_withSMSimiClassImpl_((id<JavaUtilMap>) cast_check(value, JavaUtilMap_class_()), true, objectClass));
  }
  else if ([JavaUtilList_class_() isInstance:value]) {
    return new_SMSimiValue_Object_initWithSMSimiObject_(SMSimiMapper_toObjectWithJavaUtilList_withBoolean_withSMSimiClassImpl_((id<JavaUtilList>) cast_check(value, JavaUtilList_class_()), true, objectClass));
  }
  else if ([SMSimiProperty_class_() isInstance:value]) {
    return (id<SMSimiProperty>) cast_check(value, SMSimiProperty_class_());
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Unable to cast ", [nil_chk(value) description], @" to a SimiProperty!"));
  }
}

id SMSimiMapper_fromSimiValueWithSMSimiValue_(SMSimiValue *value) {
  SMSimiMapper_initialize();
  if ([value isKindOfClass:[SMSimiValue_Number class]]) {
    return [((SMSimiValue *) nil_chk(value)) getNumber];
  }
  else if ([value isKindOfClass:[SMSimiValue_String class]]) {
    return [((SMSimiValue *) nil_chk(value)) getString];
  }
  else if ([value isKindOfClass:[SMSimiValue_Object class]]) {
    SMSimiObjectImpl *obj = (SMSimiObjectImpl *) cast_chk([((SMSimiValue *) nil_chk(value)) getObject], [SMSimiObjectImpl class]);
    if ([((SMSimiObjectImpl *) nil_chk(obj)) isArray]) {
      return SMSimiMapper_fromArrayWithSMSimiObject_(obj);
    }
    else {
      return SMSimiMapper_fromObjectWithSMSimiObject_(obj);
    }
  }
  else {
    return value;
  }
}

SMSimiClassImpl *SMSimiMapper_getObjectClassWithSMBlockInterpreter_(id<SMBlockInterpreter> interpreter) {
  SMSimiMapper_initialize();
  return (SMSimiClassImpl *) cast_chk([((SMSimiValue *) nil_chk([((id<SMSimiProperty>) nil_chk([((id<SMBlockInterpreter>) nil_chk(interpreter)) getGlobalWithNSString:SMConstants_CLASS_OBJECT])) getValue])) getObject], [SMSimiClassImpl class]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMSimiMapper)

J2OBJC_INITIALIZED_DEFN(SMSimiMapper_$Lambda$1)

@implementation SMSimiMapper_$Lambda$1

- (id)applyWithId:(id<SMSimiProperty>)a {
  return [((id<SMSimiProperty>) nil_chk(a)) getValue];
}

- (id<JavaUtilFunctionFunction>)composeWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_composeWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilFunctionFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [SMSimiMapper_$Lambda$1 class]) {
    SMSimiMapper_$Lambda$1_instance = new_SMSimiMapper_$Lambda$1_init();
    J2OBJC_SET_INITIALIZED(SMSimiMapper_$Lambda$1)
  }
}

@end

void SMSimiMapper_$Lambda$1_init(SMSimiMapper_$Lambda$1 *self) {
  NSObject_init(self);
}

SMSimiMapper_$Lambda$1 *new_SMSimiMapper_$Lambda$1_init() {
  J2OBJC_NEW_IMPL(SMSimiMapper_$Lambda$1, init)
}

SMSimiMapper_$Lambda$1 *create_SMSimiMapper_$Lambda$1_init() {
  J2OBJC_CREATE_IMPL(SMSimiMapper_$Lambda$1, init)
}

J2OBJC_INITIALIZED_DEFN(SMSimiMapper_$Lambda$2)

@implementation SMSimiMapper_$Lambda$2

- (id)applyWithId:(SMSimiValue *)a {
  return SMSimiMapper_fromSimiValueWithSMSimiValue_(a);
}

- (id<JavaUtilFunctionFunction>)composeWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_composeWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilFunctionFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [SMSimiMapper_$Lambda$2 class]) {
    SMSimiMapper_$Lambda$2_instance = new_SMSimiMapper_$Lambda$2_init();
    J2OBJC_SET_INITIALIZED(SMSimiMapper_$Lambda$2)
  }
}

@end

void SMSimiMapper_$Lambda$2_init(SMSimiMapper_$Lambda$2 *self) {
  NSObject_init(self);
}

SMSimiMapper_$Lambda$2 *new_SMSimiMapper_$Lambda$2_init() {
  J2OBJC_NEW_IMPL(SMSimiMapper_$Lambda$2, init)
}

SMSimiMapper_$Lambda$2 *create_SMSimiMapper_$Lambda$2_init() {
  J2OBJC_CREATE_IMPL(SMSimiMapper_$Lambda$2, init)
}
