//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/TempNull.java
//

#include "J2ObjC_source.h"
#include "SimiValue.h"
#include "TempNull.h"
#include "TokenType.h"

@interface SMTempNull ()

- (instancetype __nonnull)init;

@end

__attribute__((unused)) static void SMTempNull_init(SMTempNull *self);

__attribute__((unused)) static SMTempNull *new_SMTempNull_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static SMTempNull *create_SMTempNull_init(void);

J2OBJC_INITIALIZED_DEFN(SMTempNull)

SMTempNull *SMTempNull_INSTANCE;

@implementation SMTempNull

+ (SMTempNull *)INSTANCE {
  return SMTempNull_INSTANCE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  SMTempNull_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (SMSimiValue *)copy__ {
  return self;
}

- (SMSimiValue *)cloneWithBoolean:(jboolean)mutable_ {
  return self;
}

- (jint)compareToWithId:(SMSimiValue *)o {
  (void) cast_chk(o, [SMSimiValue class]);
  return 0;
}

- (NSString *)description {
  return @"nil";
}

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst {
  return [((SMTokenType *) nil_chk(JreLoadEnum(SMTokenType, NIL))) toCodeWithInt:indentationLevel withBoolean:ignoreFirst];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMSimiValue;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "LSMSimiValue;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(copy__);
  methods[2].selector = @selector(cloneWithBoolean:);
  methods[3].selector = @selector(compareToWithId:);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(toCodeWithInt:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LSMTempNull;", .constantValue.asLong = 0, 0x18, -1, 8, -1, -1 },
  };
  static const void *ptrTable[] = { "copy", "clone", "Z", "compareTo", "LSMSimiValue;", "toString", "toCode", "IZ", &SMTempNull_INSTANCE };
  static const J2ObjcClassInfo _SMTempNull = { "TempNull", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 6, 1, -1, -1, -1, -1, -1 };
  return &_SMTempNull;
}

+ (void)initialize {
  if (self == [SMTempNull class]) {
    SMTempNull_INSTANCE = new_SMTempNull_init();
    J2OBJC_SET_INITIALIZED(SMTempNull)
  }
}

@end

void SMTempNull_init(SMTempNull *self) {
  SMSimiValue_init(self);
}

SMTempNull *new_SMTempNull_init() {
  J2OBJC_NEW_IMPL(SMTempNull, init)
}

SMTempNull *create_SMTempNull_init() {
  J2OBJC_CREATE_IMPL(SMTempNull, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMTempNull)