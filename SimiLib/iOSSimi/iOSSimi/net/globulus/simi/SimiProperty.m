//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiProperty.java
//

#include "J2ObjC_source.h"
#include "SimiProperty.h"

@interface SMSimiProperty : NSObject

@end

@implementation SMSimiProperty

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LSMSimiValue;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, 2, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x401, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getValue);
  methods[1].selector = @selector(setValueWithSMSimiValue:);
  methods[2].selector = @selector(getAnnotations);
  methods[3].selector = @selector(cloneWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setValue", "LSMSimiValue;", "()Ljava/util/List<LSimiObject;>;", "clone", "Z" };
  static const J2ObjcClassInfo _SMSimiProperty = { "SimiProperty", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_SMSimiProperty;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMSimiProperty)
