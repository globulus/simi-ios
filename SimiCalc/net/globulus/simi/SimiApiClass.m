//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiApiClass.java
//

#include "J2ObjC_source.h"
#include "SimiApiClass.h"

@interface SMSimiApiClass : NSObject

@end

@implementation SMSimiApiClass

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LSMSimiProperty;", 0x401, 0, 1, -1, 2, -1, -1 },
    { NULL, "[LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(callWithNSString:withNSString:withSMSimiObject:withSMBlockInterpreter:withJavaUtilList:);
  methods[1].selector = @selector(classNames);
  methods[2].selector = @selector(globalMethodNames);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "call", "LNSString;LNSString;LSMSimiObject;LSMBlockInterpreter;LJavaUtilList;", "(Ljava/lang/String;Ljava/lang/String;LSimiObject;LBlockInterpreter;Ljava/util/List<LSimiProperty;>;)LSimiProperty;" };
  static const J2ObjcClassInfo _SMSimiApiClass = { "SimiApiClass", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_SMSimiApiClass;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMSimiApiClass)
