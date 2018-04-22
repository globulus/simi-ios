//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/NativeModulesManager.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/InstantiationException.h"
#include "java/net/URL.h"
#include "java/net/URLClassLoader.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "Constants.h"
#include "Interpreter.h"
#include "NativeModulesManager.h"
#include "SimiApiClass.h"
#include "SimiObject.h"
#include "SimiProperty.h"

@interface NetGlobulusSimiNativeModulesManager () {
 @public
  id<JavaUtilMap> classes_;
  id<JavaUtilMap> globals_;
}

@end

J2OBJC_FIELD_SETTER(NetGlobulusSimiNativeModulesManager, classes_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(NetGlobulusSimiNativeModulesManager, globals_, id<JavaUtilMap>)

inline NSString *NetGlobulusSimiNativeModulesManager_get_API_CLASS(void);
static NSString *NetGlobulusSimiNativeModulesManager_API_CLASS = @"net.globulus.simi.api.JavaApi";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetGlobulusSimiNativeModulesManager, API_CLASS, NSString *)

@implementation NetGlobulusSimiNativeModulesManager

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetGlobulusSimiNativeModulesManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)loadJarWithJavaNetURL:(JavaNetURL *)url {
  JavaLangClassLoader *loader = JavaNetURLClassLoader_newInstanceWithJavaNetURLArray_withJavaLangClassLoader_([IOSObjectArray newArrayWithObjects:(id[]){ url } count:1 type:JavaNetURL_class_()], [[self java_getClass] getClassLoader]);
  @try {
    id<NetGlobulusSimiSimiApiClass> apiClass = (id<NetGlobulusSimiSimiApiClass>) cast_check([((IOSClass *) nil_chk(IOSClass_forName_initialize_classLoader_(NetGlobulusSimiNativeModulesManager_API_CLASS, true, loader))) newInstance], NetGlobulusSimiSimiApiClass_class_());
    {
      IOSObjectArray *a__ = [((id<NetGlobulusSimiSimiApiClass>) nil_chk(apiClass)) classNames];
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *className_ = *b__++;
        (void) [((id<JavaUtilMap>) nil_chk(classes_)) putWithId:className_ withId:apiClass];
      }
    }
    {
      IOSObjectArray *a__ = [apiClass globalMethodNames];
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *globalMethodName = *b__++;
        (void) [((id<JavaUtilMap>) nil_chk(globals_)) putWithId:globalMethodName withId:apiClass];
      }
    }
  }
  @catch (JavaLangClassNotFoundException *e) {
    [e printStackTrace];
  }
  @catch (JavaLangIllegalAccessException *e) {
    [e printStackTrace];
  }
  @catch (JavaLangInstantiationException *e) {
    [e printStackTrace];
  }
}

- (id<NetGlobulusSimiSimiProperty>)callWithNSString:(NSString *)className_
                                       withNSString:(NSString *)methodName
                      withNetGlobulusSimiSimiObject:(id<NetGlobulusSimiSimiObject>)self_
                     withNetGlobulusSimiInterpreter:(NetGlobulusSimiInterpreter *)interpreter
                                   withJavaUtilList:(id<JavaUtilList>)args {
  if ([((NSString *) nil_chk(className_)) isEqual:NetGlobulusSimiConstants_CLASS_GLOBALS]) {
    id<NetGlobulusSimiSimiApiClass> apiClass = [((id<JavaUtilMap>) nil_chk(globals_)) getWithId:methodName];
    if (apiClass != nil) {
      return [apiClass callWithNSString:className_ withNSString:methodName withNetGlobulusSimiSimiObject:self_ withNetGlobulusSimiBlockInterpreter:interpreter withJavaUtilList:args];
    }
  }
  else {
    id<NetGlobulusSimiSimiApiClass> apiClass = [((id<JavaUtilMap>) nil_chk(classes_)) getWithId:className_];
    if (apiClass != nil) {
      return [apiClass callWithNSString:className_ withNSString:methodName withNetGlobulusSimiSimiObject:self_ withNetGlobulusSimiBlockInterpreter:interpreter withJavaUtilList:args];
    }
  }
  @throw new_JavaLangIllegalArgumentException_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiProperty;", 0x0, 2, 3, 4, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(loadJarWithJavaNetURL:);
  methods[2].selector = @selector(callWithNSString:withNSString:withNetGlobulusSimiSimiObject:withNetGlobulusSimiInterpreter:withJavaUtilList:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "API_CLASS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "classes_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
    { "globals_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "loadJar", "LJavaNetURL;", "call", "LNSString;LNSString;LNetGlobulusSimiSimiObject;LNetGlobulusSimiInterpreter;LJavaUtilList;", "LJavaLangIllegalArgumentException;", "(Ljava/lang/String;Ljava/lang/String;LSimiObject;LInterpreter;Ljava/util/List<LSimiProperty;>;)LSimiProperty;", &NetGlobulusSimiNativeModulesManager_API_CLASS, "Ljava/util/Map<Ljava/lang/String;LSimiApiClass;>;" };
  static const J2ObjcClassInfo _NetGlobulusSimiNativeModulesManager = { "NativeModulesManager", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 3, 3, -1, -1, -1, -1, -1 };
  return &_NetGlobulusSimiNativeModulesManager;
}

@end

void NetGlobulusSimiNativeModulesManager_init(NetGlobulusSimiNativeModulesManager *self) {
  NSObject_init(self);
  self->classes_ = new_JavaUtilHashMap_init();
  self->globals_ = new_JavaUtilHashMap_init();
}

NetGlobulusSimiNativeModulesManager *new_NetGlobulusSimiNativeModulesManager_init() {
  J2OBJC_NEW_IMPL(NetGlobulusSimiNativeModulesManager, init)
}

NetGlobulusSimiNativeModulesManager *create_NetGlobulusSimiNativeModulesManager_init() {
  J2OBJC_CREATE_IMPL(NetGlobulusSimiNativeModulesManager, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetGlobulusSimiNativeModulesManager)