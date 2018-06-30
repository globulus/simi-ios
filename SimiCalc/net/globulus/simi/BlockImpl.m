//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/BlockImpl.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "BlockImpl.h"
#include "BlockInterpreter.h"
#include "Environment.h"
#include "Expr.h"
#include "Return.h"
#include "SimiObjectImpl.h"
#include "SimiProperty.h"
#include "SimiValue.h"
#include "Token.h"
#include "Yield.h"

@interface SMBlockImpl () {
 @public
  JavaLangInteger *lastStatement_;
  SMEnvironment *lastClosure_;
}

- (void)clearYield;

@end

J2OBJC_FIELD_SETTER(SMBlockImpl, lastStatement_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(SMBlockImpl, lastClosure_, SMEnvironment *)

__attribute__((unused)) static void SMBlockImpl_clearYield(SMBlockImpl *self);

@implementation SMBlockImpl

- (instancetype __nonnull)initWithSMExpr_Block:(SMExpr_Block *)declaration
                             withSMEnvironment:(SMEnvironment *)closure {
  SMBlockImpl_initWithSMExpr_Block_withSMEnvironment_(self, declaration, closure);
  return self;
}

- (SMBlockImpl *)bindWithSMSimiObjectImpl:(SMSimiObjectImpl *)instance {
  SMEnvironment *environment = new_SMEnvironment_initWithSMEnvironment_(closure_);
  [environment assignWithSMToken:SMToken_self__() withSMSimiProperty:new_SMSimiValue_Object_initWithSMSimiObject_(instance) withBoolean:false];
  return new_SMBlockImpl_initWithSMExpr_Block_withSMEnvironment_(declaration_, environment);
}

- (jboolean)isNative {
  return [((SMExpr_Block *) nil_chk(declaration_)) isNative];
}

- (void)yieldWithInt:(jint)index {
  self->lastStatement_ = JavaLangInteger_valueOfWithInt_(index);
  self->lastClosure_ = self->closure_;
}

- (void)clearYield {
  SMBlockImpl_clearYield(self);
}

- (NSString *)description {
  return @"<block>";
}

- (jint)arity {
  return [((id<JavaUtilList>) nil_chk(((SMExpr_Block *) nil_chk(declaration_))->params_)) size];
}

- (id<SMSimiProperty>)callWithSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter
                                withJavaUtilList:(id<JavaUtilList>)arguments
                                     withBoolean:(jboolean)rethrow {
  SMEnvironment *environment = new_SMEnvironment_initWithSMEnvironment_(lastClosure_ != nil ? lastClosure_ : closure_);
  if (arguments != nil) {
    for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(((SMExpr_Block *) nil_chk(declaration_))->params_)) size]; i++) {
      [environment defineWithNSString:((SMToken *) nil_chk([declaration_->params_ getWithInt:i]))->lexeme_ withSMSimiProperty:[arguments getWithInt:i]];
    }
  }
  @try {
    [((id<SMBlockInterpreter>) nil_chk(interpreter)) executeBlockWithSMSimiBlock:self withSMSimiEnvironment:environment withInt:(lastStatement_ != nil) ? [((JavaLangInteger *) nil_chk(lastStatement_)) intValue] : 0];
  }
  @catch (SMReturn *returnValue) {
    SMBlockImpl_clearYield(self);
    if (rethrow) {
      @throw returnValue;
    }
    else {
      return returnValue->prop_;
    }
  }
  @catch (SMYield *yield) {
    if (rethrow) {
      @throw new_SMYield_initWithSMSimiProperty_withBoolean_(yield->prop_, true);
    }
    else {
      return yield->prop_;
    }
  }
  SMBlockImpl_clearYield(self);
  return nil;
}

- (id<JavaUtilList>)getStatements {
  return [((SMExpr_Block *) nil_chk(declaration_)) getStatements];
}

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst {
  return [((SMExpr_Block *) nil_chk(declaration_)) toCodeWithInt:indentationLevel withBoolean:ignoreFirst];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LSMBlockImpl;", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x1, 6, 7, -1, 8, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 9, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSMExpr_Block:withSMEnvironment:);
  methods[1].selector = @selector(bindWithSMSimiObjectImpl:);
  methods[2].selector = @selector(isNative);
  methods[3].selector = @selector(yieldWithInt:);
  methods[4].selector = @selector(clearYield);
  methods[5].selector = @selector(description);
  methods[6].selector = @selector(arity);
  methods[7].selector = @selector(callWithSMBlockInterpreter:withJavaUtilList:withBoolean:);
  methods[8].selector = @selector(getStatements);
  methods[9].selector = @selector(toCodeWithInt:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "declaration_", "LSMExpr_Block;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "closure_", "LSMEnvironment;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "lastStatement_", "LJavaLangInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastClosure_", "LSMEnvironment;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LSMExpr_Block;LSMEnvironment;", "bind", "LSMSimiObjectImpl;", "yield", "I", "toString", "call", "LSMBlockInterpreter;LJavaUtilList;Z", "(LBlockInterpreter;Ljava/util/List<LSimiProperty;>;Z)LSimiProperty;", "()Ljava/util/List<+LSimiStatement;>;", "toCode", "IZ" };
  static const J2ObjcClassInfo _SMBlockImpl = { "BlockImpl", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 10, 4, -1, -1, -1, -1, -1 };
  return &_SMBlockImpl;
}

@end

void SMBlockImpl_initWithSMExpr_Block_withSMEnvironment_(SMBlockImpl *self, SMExpr_Block *declaration, SMEnvironment *closure) {
  NSObject_init(self);
  self->declaration_ = declaration;
  self->closure_ = closure;
}

SMBlockImpl *new_SMBlockImpl_initWithSMExpr_Block_withSMEnvironment_(SMExpr_Block *declaration, SMEnvironment *closure) {
  J2OBJC_NEW_IMPL(SMBlockImpl, initWithSMExpr_Block_withSMEnvironment_, declaration, closure)
}

SMBlockImpl *create_SMBlockImpl_initWithSMExpr_Block_withSMEnvironment_(SMExpr_Block *declaration, SMEnvironment *closure) {
  J2OBJC_CREATE_IMPL(SMBlockImpl, initWithSMExpr_Block_withSMEnvironment_, declaration, closure)
}

void SMBlockImpl_clearYield(SMBlockImpl *self) {
  self->lastStatement_ = nil;
  self->lastClosure_ = nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMBlockImpl)
