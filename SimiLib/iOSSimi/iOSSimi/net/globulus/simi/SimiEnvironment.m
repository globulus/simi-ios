//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiEnvironment.java
//

#include "J2ObjC_source.h"
#include "SimiEnvironment.h"

@interface SMSimiEnvironment : NSObject

@end

@implementation SMSimiEnvironment

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(defineWithNSString:withSMSimiProperty:);
  methods[1].selector = @selector(tryGetWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "define", "LNSString;LSMSimiProperty;", "tryGet", "LNSString;" };
  static const J2ObjcClassInfo _SMSimiEnvironment = { "SimiEnvironment", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_SMSimiEnvironment;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMSimiEnvironment)
