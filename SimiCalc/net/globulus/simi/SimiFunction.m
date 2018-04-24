//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiFunction.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "BlockImpl.h"
#include "BlockInterpreter.h"
#include "Constants.h"
#include "Environment.h"
#include "Expr.h"
#include "SimiFunction.h"
#include "SimiObjectImpl.h"
#include "SimiProperty.h"
#include "Stmt.h"
#include "Token.h"

@interface SMSimiFunction () {
 @public
  SMBlockImpl *block_;
  jboolean isInitializer_;
}

- (instancetype __nonnull)initWithSMSimiFunction:(SMSimiFunction *)original
                                 withSMBlockImpl:(SMBlockImpl *)block;

@end

J2OBJC_FIELD_SETTER(SMSimiFunction, block_, SMBlockImpl *)

__attribute__((unused)) static void SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(SMSimiFunction *self, SMSimiFunction *original, SMBlockImpl *block);

__attribute__((unused)) static SMSimiFunction *new_SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(SMSimiFunction *original, SMBlockImpl *block) NS_RETURNS_RETAINED;

__attribute__((unused)) static SMSimiFunction *create_SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(SMSimiFunction *original, SMBlockImpl *block);

@implementation SMSimiFunction

- (instancetype __nonnull)initWithSMStmt_Function:(SMStmt_Function *)declaration
                                withSMEnvironment:(SMEnvironment *)closure
                                      withBoolean:(jboolean)isInitializer
                                      withBoolean:(jboolean)isNative
                                 withJavaUtilList:(id<JavaUtilList>)annotations {
  SMSimiFunction_initWithSMStmt_Function_withSMEnvironment_withBoolean_withBoolean_withJavaUtilList_(self, declaration, closure, isInitializer, isNative, annotations);
  return self;
}

- (instancetype __nonnull)initWithSMSimiFunction:(SMSimiFunction *)original
                                 withSMBlockImpl:(SMBlockImpl *)block {
  SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(self, original, block);
  return self;
}

- (SMSimiFunction *)bindWithSMSimiObjectImpl:(SMSimiObjectImpl *)instance {
  return new_SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(self, [((SMBlockImpl *) nil_chk(block_)) bindWithSMSimiObjectImpl:instance]);
}

- (NSString *)description {
  return JreStrcat("C$C$C", '<', (isNative_ ? @"native" : @"def"), ' ', ((SMToken *) nil_chk(((SMStmt_Function *) nil_chk(declaration_))->name_))->lexeme_, '>');
}

- (jint)arity {
  return [((SMBlockImpl *) nil_chk(block_)) arity];
}

- (id<SMSimiProperty>)callWithSMBlockInterpreter:(id<SMBlockInterpreter>)interpreter
                                withJavaUtilList:(id<JavaUtilList>)arguments
                                     withBoolean:(jboolean)rethrow {
  id<SMSimiProperty> prop = [((SMBlockImpl *) nil_chk(block_)) callWithSMBlockInterpreter:interpreter withJavaUtilList:arguments withBoolean:rethrow];
  if (isInitializer_) {
    return [((SMEnvironment *) nil_chk(block_->closure_)) getAtWithInt:0 withNSString:SMConstants_SELF];
  }
  return prop;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "LSMSimiFunction;", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMSimiProperty;", 0x1, 6, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSMStmt_Function:withSMEnvironment:withBoolean:withBoolean:withJavaUtilList:);
  methods[1].selector = @selector(initWithSMSimiFunction:withSMBlockImpl:);
  methods[2].selector = @selector(bindWithSMSimiObjectImpl:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(arity);
  methods[5].selector = @selector(callWithSMBlockInterpreter:withJavaUtilList:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "declaration_", "LSMStmt_Function;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "block_", "LSMBlockImpl;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isInitializer_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isNative_", "Z", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "annotations_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "LSMStmt_Function;LSMEnvironment;ZZLJavaUtilList;", "(LStmt$Function;LEnvironment;ZZLjava/util/List<LSimiObject;>;)V", "LSMSimiFunction;LSMBlockImpl;", "bind", "LSMSimiObjectImpl;", "toString", "call", "LSMBlockInterpreter;LJavaUtilList;Z", "(LBlockInterpreter;Ljava/util/List<LSimiProperty;>;Z)LSimiProperty;", "Ljava/util/List<LSimiObject;>;" };
  static const J2ObjcClassInfo _SMSimiFunction = { "SimiFunction", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 6, 5, -1, -1, -1, -1, -1 };
  return &_SMSimiFunction;
}

@end

void SMSimiFunction_initWithSMStmt_Function_withSMEnvironment_withBoolean_withBoolean_withJavaUtilList_(SMSimiFunction *self, SMStmt_Function *declaration, SMEnvironment *closure, jboolean isInitializer, jboolean isNative, id<JavaUtilList> annotations) {
  NSObject_init(self);
  self->declaration_ = declaration;
  self->block_ = new_SMBlockImpl_initWithSMExpr_Block_withSMEnvironment_(((SMStmt_Function *) nil_chk(declaration))->block_, closure);
  self->isInitializer_ = isInitializer;
  self->isNative_ = isNative;
  self->annotations_ = annotations;
}

SMSimiFunction *new_SMSimiFunction_initWithSMStmt_Function_withSMEnvironment_withBoolean_withBoolean_withJavaUtilList_(SMStmt_Function *declaration, SMEnvironment *closure, jboolean isInitializer, jboolean isNative, id<JavaUtilList> annotations) {
  J2OBJC_NEW_IMPL(SMSimiFunction, initWithSMStmt_Function_withSMEnvironment_withBoolean_withBoolean_withJavaUtilList_, declaration, closure, isInitializer, isNative, annotations)
}

SMSimiFunction *create_SMSimiFunction_initWithSMStmt_Function_withSMEnvironment_withBoolean_withBoolean_withJavaUtilList_(SMStmt_Function *declaration, SMEnvironment *closure, jboolean isInitializer, jboolean isNative, id<JavaUtilList> annotations) {
  J2OBJC_CREATE_IMPL(SMSimiFunction, initWithSMStmt_Function_withSMEnvironment_withBoolean_withBoolean_withJavaUtilList_, declaration, closure, isInitializer, isNative, annotations)
}

void SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(SMSimiFunction *self, SMSimiFunction *original, SMBlockImpl *block) {
  NSObject_init(self);
  self->declaration_ = ((SMSimiFunction *) nil_chk(original))->declaration_;
  self->block_ = block;
  self->isInitializer_ = original->isInitializer_;
  self->isNative_ = original->isNative_;
  self->annotations_ = original->annotations_;
}

SMSimiFunction *new_SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(SMSimiFunction *original, SMBlockImpl *block) {
  J2OBJC_NEW_IMPL(SMSimiFunction, initWithSMSimiFunction_withSMBlockImpl_, original, block)
}

SMSimiFunction *create_SMSimiFunction_initWithSMSimiFunction_withSMBlockImpl_(SMSimiFunction *original, SMBlockImpl *block) {
  J2OBJC_CREATE_IMPL(SMSimiFunction, initWithSMSimiFunction_withSMBlockImpl_, original, block)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMSimiFunction)
