//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiObject.java
//

#include "J2ObjC_source.h"
#include "SimiObject.h"

@interface NetGlobulusSimiSimiObject : NSObject

@end

@implementation NetGlobulusSimiSimiObject

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNetGlobulusSimiSimiClass;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiProperty;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiObject;", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getSimiClass);
  methods[1].selector = @selector(getWithNSString:withNetGlobulusSimiSimiEnvironment:);
  methods[2].selector = @selector(setWithNSString:withNetGlobulusSimiSimiProperty:withNetGlobulusSimiSimiEnvironment:);
  methods[3].selector = @selector(cloneWithBoolean:);
  methods[4].selector = @selector(values);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "get", "LNSString;LNetGlobulusSimiSimiEnvironment;", "set", "LNSString;LNetGlobulusSimiSimiProperty;LNetGlobulusSimiSimiEnvironment;", "clone", "Z", "()Ljava/util/List<LSimiValue;>;" };
  static const J2ObjcClassInfo _NetGlobulusSimiSimiObject = { "SimiObject", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_NetGlobulusSimiSimiObject;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetGlobulusSimiSimiObject)