//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Yield.java
//

#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "SimiProperty.h"
#include "Yield.h"

@implementation SMYield

- (instancetype __nonnull)initWithSMSimiProperty:(id<SMSimiProperty>)prop
                                     withBoolean:(jboolean)rethrown {
  SMYield_initWithSMSimiProperty_withBoolean_(self, prop, rethrown);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSMSimiProperty:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "prop_", "LSMSimiProperty;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "rethrown_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LSMSimiProperty;Z" };
  static const J2ObjcClassInfo _SMYield = { "Yield", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 1, 2, -1, -1, -1, -1, -1 };
  return &_SMYield;
}

@end

void SMYield_initWithSMSimiProperty_withBoolean_(SMYield *self, id<SMSimiProperty> prop, jboolean rethrown) {
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_withBoolean_withBoolean_(self, nil, nil, false, false);
  self->prop_ = prop;
  self->rethrown_ = rethrown;
}

SMYield *new_SMYield_initWithSMSimiProperty_withBoolean_(id<SMSimiProperty> prop, jboolean rethrown) {
  J2OBJC_NEW_IMPL(SMYield, initWithSMSimiProperty_withBoolean_, prop, rethrown)
}

SMYield *create_SMYield_initWithSMSimiProperty_withBoolean_(id<SMSimiProperty> prop, jboolean rethrown) {
  J2OBJC_CREATE_IMPL(SMYield, initWithSMSimiProperty_withBoolean_, prop, rethrown)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMYield)
