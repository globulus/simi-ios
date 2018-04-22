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

@interface NetGlobulusSimiSimiFunction () {
 @public
  NetGlobulusSimiBlockImpl *block_;
  jboolean isInitializer_;
}

- (instancetype)initWithNetGlobulusSimiSimiFunction:(NetGlobulusSimiSimiFunction *)original
                       withNetGlobulusSimiBlockImpl:(NetGlobulusSimiBlockImpl *)block;

@end

J2OBJC_FIELD_SETTER(NetGlobulusSimiSimiFunction, block_, NetGlobulusSimiBlockImpl *)

__attribute__((unused)) static void NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(NetGlobulusSimiSimiFunction *self, NetGlobulusSimiSimiFunction *original, NetGlobulusSimiBlockImpl *block);

__attribute__((unused)) static NetGlobulusSimiSimiFunction *new_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(NetGlobulusSimiSimiFunction *original, NetGlobulusSimiBlockImpl *block) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetGlobulusSimiSimiFunction *create_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(NetGlobulusSimiSimiFunction *original, NetGlobulusSimiBlockImpl *block);

@implementation NetGlobulusSimiSimiFunction

- (instancetype)initWithNetGlobulusSimiStmt_Function:(NetGlobulusSimiStmt_Function *)declaration
                      withNetGlobulusSimiEnvironment:(NetGlobulusSimiEnvironment *)closure
                                         withBoolean:(jboolean)isInitializer
                                         withBoolean:(jboolean)isNative
                                    withJavaUtilList:(id<JavaUtilList>)annotations {
  NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiStmt_Function_withNetGlobulusSimiEnvironment_withBoolean_withBoolean_withJavaUtilList_(self, declaration, closure, isInitializer, isNative, annotations);
  return self;
}

- (instancetype)initWithNetGlobulusSimiSimiFunction:(NetGlobulusSimiSimiFunction *)original
                       withNetGlobulusSimiBlockImpl:(NetGlobulusSimiBlockImpl *)block {
  NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(self, original, block);
  return self;
}

- (NetGlobulusSimiSimiFunction *)bindWithNetGlobulusSimiSimiObjectImpl:(NetGlobulusSimiSimiObjectImpl *)instance {
  return new_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(self, [((NetGlobulusSimiBlockImpl *) nil_chk(block_)) bindWithNetGlobulusSimiSimiObjectImpl:instance]);
}

- (NSString *)description {
  return JreStrcat("C$C$C", '<', (isNative_ ? @"native" : @"def"), ' ', ((NetGlobulusSimiToken *) nil_chk(((NetGlobulusSimiStmt_Function *) nil_chk(declaration_))->name_))->lexeme_, '>');
}

- (jint)arity {
  return [((NetGlobulusSimiBlockImpl *) nil_chk(block_)) arity];
}

- (id<NetGlobulusSimiSimiProperty>)callWithNetGlobulusSimiBlockInterpreter:(id<NetGlobulusSimiBlockInterpreter>)interpreter
                                                          withJavaUtilList:(id<JavaUtilList>)arguments
                                                               withBoolean:(jboolean)rethrow {
  id<NetGlobulusSimiSimiProperty> prop = [((NetGlobulusSimiBlockImpl *) nil_chk(block_)) callWithNetGlobulusSimiBlockInterpreter:interpreter withJavaUtilList:arguments withBoolean:rethrow];
  if (isInitializer_) {
    return [((NetGlobulusSimiEnvironment *) nil_chk(block_->closure_)) getAtWithInt:0 withNSString:NetGlobulusSimiConstants_SELF];
  }
  return prop;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiFunction;", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiProperty;", 0x1, 6, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetGlobulusSimiStmt_Function:withNetGlobulusSimiEnvironment:withBoolean:withBoolean:withJavaUtilList:);
  methods[1].selector = @selector(initWithNetGlobulusSimiSimiFunction:withNetGlobulusSimiBlockImpl:);
  methods[2].selector = @selector(bindWithNetGlobulusSimiSimiObjectImpl:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(arity);
  methods[5].selector = @selector(callWithNetGlobulusSimiBlockInterpreter:withJavaUtilList:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "declaration_", "LNetGlobulusSimiStmt_Function;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "block_", "LNetGlobulusSimiBlockImpl;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isInitializer_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isNative_", "Z", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "annotations_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "LNetGlobulusSimiStmt_Function;LNetGlobulusSimiEnvironment;ZZLJavaUtilList;", "(LStmt$Function;LEnvironment;ZZLjava/util/List<LSimiObject;>;)V", "LNetGlobulusSimiSimiFunction;LNetGlobulusSimiBlockImpl;", "bind", "LNetGlobulusSimiSimiObjectImpl;", "toString", "call", "LNetGlobulusSimiBlockInterpreter;LJavaUtilList;Z", "(LBlockInterpreter;Ljava/util/List<LSimiProperty;>;Z)LSimiProperty;", "Ljava/util/List<LSimiObject;>;" };
  static const J2ObjcClassInfo _NetGlobulusSimiSimiFunction = { "SimiFunction", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 6, 5, -1, -1, -1, -1, -1 };
  return &_NetGlobulusSimiSimiFunction;
}

@end

void NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiStmt_Function_withNetGlobulusSimiEnvironment_withBoolean_withBoolean_withJavaUtilList_(NetGlobulusSimiSimiFunction *self, NetGlobulusSimiStmt_Function *declaration, NetGlobulusSimiEnvironment *closure, jboolean isInitializer, jboolean isNative, id<JavaUtilList> annotations) {
  NSObject_init(self);
  self->declaration_ = declaration;
  self->block_ = new_NetGlobulusSimiBlockImpl_initWithNetGlobulusSimiExpr_Block_withNetGlobulusSimiEnvironment_(((NetGlobulusSimiStmt_Function *) nil_chk(declaration))->block_, closure);
  self->isInitializer_ = isInitializer;
  self->isNative_ = isNative;
  self->annotations_ = annotations;
}

NetGlobulusSimiSimiFunction *new_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiStmt_Function_withNetGlobulusSimiEnvironment_withBoolean_withBoolean_withJavaUtilList_(NetGlobulusSimiStmt_Function *declaration, NetGlobulusSimiEnvironment *closure, jboolean isInitializer, jboolean isNative, id<JavaUtilList> annotations) {
  J2OBJC_NEW_IMPL(NetGlobulusSimiSimiFunction, initWithNetGlobulusSimiStmt_Function_withNetGlobulusSimiEnvironment_withBoolean_withBoolean_withJavaUtilList_, declaration, closure, isInitializer, isNative, annotations)
}

NetGlobulusSimiSimiFunction *create_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiStmt_Function_withNetGlobulusSimiEnvironment_withBoolean_withBoolean_withJavaUtilList_(NetGlobulusSimiStmt_Function *declaration, NetGlobulusSimiEnvironment *closure, jboolean isInitializer, jboolean isNative, id<JavaUtilList> annotations) {
  J2OBJC_CREATE_IMPL(NetGlobulusSimiSimiFunction, initWithNetGlobulusSimiStmt_Function_withNetGlobulusSimiEnvironment_withBoolean_withBoolean_withJavaUtilList_, declaration, closure, isInitializer, isNative, annotations)
}

void NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(NetGlobulusSimiSimiFunction *self, NetGlobulusSimiSimiFunction *original, NetGlobulusSimiBlockImpl *block) {
  NSObject_init(self);
  self->declaration_ = ((NetGlobulusSimiSimiFunction *) nil_chk(original))->declaration_;
  self->block_ = block;
  self->isInitializer_ = original->isInitializer_;
  self->isNative_ = original->isNative_;
  self->annotations_ = original->annotations_;
}

NetGlobulusSimiSimiFunction *new_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(NetGlobulusSimiSimiFunction *original, NetGlobulusSimiBlockImpl *block) {
  J2OBJC_NEW_IMPL(NetGlobulusSimiSimiFunction, initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_, original, block)
}

NetGlobulusSimiSimiFunction *create_NetGlobulusSimiSimiFunction_initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_(NetGlobulusSimiSimiFunction *original, NetGlobulusSimiBlockImpl *block) {
  J2OBJC_CREATE_IMPL(NetGlobulusSimiSimiFunction, initWithNetGlobulusSimiSimiFunction_withNetGlobulusSimiBlockImpl_, original, block)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetGlobulusSimiSimiFunction)