//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiObject.java
//

#include "J2ObjC_source.h"
#include "SimiObject.h"

@interface SMSimiObject : NSObject

@end

@implementation SMSimiObject

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LSMSimiClass;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LSMSimiObject;", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, 6, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getSimiClass);
  methods[1].selector = @selector(getWithNSString:withSMSimiEnvironment:);
  methods[2].selector = @selector(setWithNSString:withSMSimiProperty:withSMSimiEnvironment:);
  methods[3].selector = @selector(cloneWithBoolean:);
  methods[4].selector = @selector(keys);
  methods[5].selector = @selector(values);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "get", "LNSString;LSMSimiEnvironment;", "set", "LNSString;LSMSimiProperty;LSMSimiEnvironment;", "clone", "Z", "()Ljava/util/List<LSimiValue;>;", "Ljava/lang/Object;LCodifiable;Ljava/lang/Comparable<LSimiObject;>;" };
  static const J2ObjcClassInfo _SMSimiObject = { "SimiObject", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x609, 6, 0, -1, -1, -1, 7, -1 };
  return &_SMSimiObject;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMSimiObject)
