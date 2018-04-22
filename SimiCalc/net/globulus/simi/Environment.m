//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Environment.java
//

#include "J2ObjC_source.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "BlockImpl.h"
#include "Constants.h"
#include "Environment.h"
#include "Expr.h"
#include "RuntimeError.h"
#include "SimiProperty.h"
#include "SimiValue.h"
#include "SparseArray.h"
#include "Stmt.h"
#include "Token.h"

@interface NetGlobulusSimiEnvironment () {
 @public
  id<JavaUtilMap> props_;
  id<JavaUtilMap> statementBlocks_;
}

- (void)popBlockWithNetGlobulusSimiStmt_BlockStmt:(id<NetGlobulusSimiStmt_BlockStmt>)stmt
                                  withJavaUtilMap:(id<JavaUtilMap>)yieldedStmts;

@end

J2OBJC_FIELD_SETTER(NetGlobulusSimiEnvironment, props_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(NetGlobulusSimiEnvironment, statementBlocks_, id<JavaUtilMap>)

__attribute__((unused)) static void NetGlobulusSimiEnvironment_popBlockWithNetGlobulusSimiStmt_BlockStmt_withJavaUtilMap_(NetGlobulusSimiEnvironment *self, id<NetGlobulusSimiStmt_BlockStmt> stmt, id<JavaUtilMap> yieldedStmts);

@implementation NetGlobulusSimiEnvironment

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetGlobulusSimiEnvironment_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNetGlobulusSimiEnvironment:(NetGlobulusSimiEnvironment *)enclosing {
  NetGlobulusSimiEnvironment_initWithNetGlobulusSimiEnvironment_(self, enclosing);
  return self;
}

- (jboolean)hasWithNSString:(NSString *)key {
  return [((id<JavaUtilMap>) nil_chk(props_)) containsKeyWithId:key];
}

- (NetGlobulusSimiSimiValue *)getWithNetGlobulusSimiToken:(NetGlobulusSimiToken *)name {
  if ([((id<JavaUtilMap>) nil_chk(props_)) containsKeyWithId:((NetGlobulusSimiToken *) nil_chk(name))->lexeme_]) {
    return [((id<NetGlobulusSimiSimiProperty>) nil_chk([props_ getWithId:name->lexeme_])) getValue];
  }
  if (enclosing_ != nil) {
    return [enclosing_ getWithNetGlobulusSimiToken:name];
  }
  return nil;
}

- (void)assignWithNetGlobulusSimiToken:(NetGlobulusSimiToken *)name
       withNetGlobulusSimiSimiProperty:(id<NetGlobulusSimiSimiProperty>)prop
                           withBoolean:(jboolean)allowImmutable {
  NSString *key = ((NetGlobulusSimiToken *) nil_chk(name))->lexeme_;
  if ([((id<JavaUtilMap>) nil_chk(props_)) containsKeyWithId:key]) {
    if (allowImmutable || [((NSString *) nil_chk(key)) java_hasPrefix:NetGlobulusSimiConstants_MUTABLE]) {
      (void) [props_ putWithId:key withId:prop];
    }
    else {
      @throw new_NetGlobulusSimiRuntimeError_initWithNetGlobulusSimiToken_withNSString_(name, JreStrcat("$$$", @"Cannot assign to a const, use ", NetGlobulusSimiConstants_MUTABLE, @" at the start of var name!"));
    }
  }
  else {
    [self defineWithNSString:key withNetGlobulusSimiSimiProperty:prop];
  }
}

- (void)defineWithNSString:(NSString *)name
withNetGlobulusSimiSimiProperty:(id<NetGlobulusSimiSimiProperty>)property {
  if (property == nil || [property getValue] == nil) {
    (void) [((id<JavaUtilMap>) nil_chk(props_)) removeWithId:name];
  }
  else {
    (void) [((id<JavaUtilMap>) nil_chk(props_)) putWithId:name withId:property];
  }
}

- (NetGlobulusSimiEnvironment *)ancestorWithInt:(jint)distance {
  NetGlobulusSimiEnvironment *environment = self;
  for (jint i = 0; i < distance; i++) {
    environment = ((NetGlobulusSimiEnvironment *) nil_chk(environment))->enclosing_;
  }
  return environment;
}

- (id<NetGlobulusSimiSimiProperty>)getAtWithInt:(jint)distance
                                   withNSString:(NSString *)name {
  return [((id<JavaUtilMap>) nil_chk(((NetGlobulusSimiEnvironment *) nil_chk([self ancestorWithInt:distance]))->props_)) getWithId:name];
}

- (void)assignAtWithInt:(jint)distance
withNetGlobulusSimiToken:(NetGlobulusSimiToken *)name
withNetGlobulusSimiSimiProperty:(id<NetGlobulusSimiSimiProperty>)prop {
  [((NetGlobulusSimiEnvironment *) nil_chk([self ancestorWithInt:distance])) assignWithNetGlobulusSimiToken:name withNetGlobulusSimiSimiProperty:prop withBoolean:false];
}

- (id<NetGlobulusSimiSimiProperty>)tryGetWithNSString:(NSString *)name {
  for (NetGlobulusSimiEnvironment *env = self; env != nil; env = env->enclosing_) {
    id<NetGlobulusSimiSimiProperty> prop = [((id<JavaUtilMap>) nil_chk(env->props_)) getWithId:name];
    if (prop != nil) {
      return prop;
    }
  }
  return nil;
}

- (NSString *)description {
  NSString *result = [((id<JavaUtilMap>) nil_chk(props_)) description];
  if (enclosing_ != nil) {
    (void) JreStrAppendStrong(&result, "$$", @" -> ", [enclosing_ description]);
  }
  return result;
}

- (NetGlobulusSimiBlockImpl *)getOrAssignBlockWithNetGlobulusSimiStmt_BlockStmt:(id<NetGlobulusSimiStmt_BlockStmt>)stmt
                                                  withNetGlobulusSimiExpr_Block:(NetGlobulusSimiExpr_Block *)declaration
                                                                withJavaUtilMap:(id<JavaUtilMap>)yieldedStmts {
  NetGlobulusSimiBlockImpl *block = [((id<JavaUtilMap>) nil_chk(statementBlocks_)) getWithId:stmt];
  if (block == nil) {
    NetGlobulusSimiSparseArray *yieldedBlocks = [((id<JavaUtilMap>) nil_chk(yieldedStmts)) getWithId:stmt];
    if (yieldedBlocks != nil) {
      block = [yieldedBlocks getWithInt:depth_];
    }
    if (block == nil) {
      block = new_NetGlobulusSimiBlockImpl_initWithNetGlobulusSimiExpr_Block_withNetGlobulusSimiEnvironment_(declaration, self);
      (void) [statementBlocks_ putWithId:stmt withId:block];
    }
  }
  return block;
}

- (void)endBlockWithNetGlobulusSimiStmt_BlockStmt:(id<NetGlobulusSimiStmt_BlockStmt>)stmt
                                  withJavaUtilMap:(id<JavaUtilMap>)yieldedStmts {
  (void) [((id<JavaUtilMap>) nil_chk(statementBlocks_)) removeWithId:stmt];
  NetGlobulusSimiEnvironment_popBlockWithNetGlobulusSimiStmt_BlockStmt_withJavaUtilMap_(self, stmt, yieldedStmts);
  for (id<NetGlobulusSimiStmt_BlockStmt> __strong child in nil_chk([((id<NetGlobulusSimiStmt_BlockStmt>) nil_chk(stmt)) getChildren])) {
    [self endBlockWithNetGlobulusSimiStmt_BlockStmt:child withJavaUtilMap:yieldedStmts];
  }
}

- (void)popBlockWithNetGlobulusSimiStmt_BlockStmt:(id<NetGlobulusSimiStmt_BlockStmt>)stmt
                                  withJavaUtilMap:(id<JavaUtilMap>)yieldedStmts {
  NetGlobulusSimiEnvironment_popBlockWithNetGlobulusSimiStmt_BlockStmt_withJavaUtilMap_(self, stmt, yieldedStmts);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiValue;", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiEnvironment;", 0x0, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiProperty;", 0x0, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiSimiProperty;", 0x1, 15, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiBlockImpl;", 0x0, 17, 18, -1, 19, -1, -1 },
    { NULL, "V", 0x0, 20, 21, -1, 22, -1, -1 },
    { NULL, "V", 0x2, 23, 21, -1, 22, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNetGlobulusSimiEnvironment:);
  methods[2].selector = @selector(hasWithNSString:);
  methods[3].selector = @selector(getWithNetGlobulusSimiToken:);
  methods[4].selector = @selector(assignWithNetGlobulusSimiToken:withNetGlobulusSimiSimiProperty:withBoolean:);
  methods[5].selector = @selector(defineWithNSString:withNetGlobulusSimiSimiProperty:);
  methods[6].selector = @selector(ancestorWithInt:);
  methods[7].selector = @selector(getAtWithInt:withNSString:);
  methods[8].selector = @selector(assignAtWithInt:withNetGlobulusSimiToken:withNetGlobulusSimiSimiProperty:);
  methods[9].selector = @selector(tryGetWithNSString:);
  methods[10].selector = @selector(description);
  methods[11].selector = @selector(getOrAssignBlockWithNetGlobulusSimiStmt_BlockStmt:withNetGlobulusSimiExpr_Block:withJavaUtilMap:);
  methods[12].selector = @selector(endBlockWithNetGlobulusSimiStmt_BlockStmt:withJavaUtilMap:);
  methods[13].selector = @selector(popBlockWithNetGlobulusSimiStmt_BlockStmt:withJavaUtilMap:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "enclosing_", "LNetGlobulusSimiEnvironment;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "props_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 24, -1 },
    { "statementBlocks_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 25, -1 },
    { "depth_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetGlobulusSimiEnvironment;", "has", "LNSString;", "get", "LNetGlobulusSimiToken;", "assign", "LNetGlobulusSimiToken;LNetGlobulusSimiSimiProperty;Z", "define", "LNSString;LNetGlobulusSimiSimiProperty;", "ancestor", "I", "getAt", "ILNSString;", "assignAt", "ILNetGlobulusSimiToken;LNetGlobulusSimiSimiProperty;", "tryGet", "toString", "getOrAssignBlock", "LNetGlobulusSimiStmt_BlockStmt;LNetGlobulusSimiExpr_Block;LJavaUtilMap;", "(LStmt$BlockStmt;LExpr$Block;Ljava/util/Map<LStmt$BlockStmt;LSparseArray<LBlockImpl;>;>;)LBlockImpl;", "endBlock", "LNetGlobulusSimiStmt_BlockStmt;LJavaUtilMap;", "(LStmt$BlockStmt;Ljava/util/Map<LStmt$BlockStmt;LSparseArray<LBlockImpl;>;>;)V", "popBlock", "Ljava/util/Map<Ljava/lang/String;LSimiProperty;>;", "Ljava/util/Map<LStmt$BlockStmt;LBlockImpl;>;" };
  static const J2ObjcClassInfo _NetGlobulusSimiEnvironment = { "Environment", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 14, 4, -1, -1, -1, -1, -1 };
  return &_NetGlobulusSimiEnvironment;
}

@end

void NetGlobulusSimiEnvironment_init(NetGlobulusSimiEnvironment *self) {
  NSObject_init(self);
  self->props_ = new_JavaUtilHashMap_init();
  self->statementBlocks_ = new_JavaUtilHashMap_init();
  self->enclosing_ = nil;
  self->depth_ = 0;
}

NetGlobulusSimiEnvironment *new_NetGlobulusSimiEnvironment_init() {
  J2OBJC_NEW_IMPL(NetGlobulusSimiEnvironment, init)
}

NetGlobulusSimiEnvironment *create_NetGlobulusSimiEnvironment_init() {
  J2OBJC_CREATE_IMPL(NetGlobulusSimiEnvironment, init)
}

void NetGlobulusSimiEnvironment_initWithNetGlobulusSimiEnvironment_(NetGlobulusSimiEnvironment *self, NetGlobulusSimiEnvironment *enclosing) {
  NSObject_init(self);
  self->props_ = new_JavaUtilHashMap_init();
  self->statementBlocks_ = new_JavaUtilHashMap_init();
  self->enclosing_ = enclosing;
  self->depth_ = ((NetGlobulusSimiEnvironment *) nil_chk(enclosing))->depth_ + 1;
}

NetGlobulusSimiEnvironment *new_NetGlobulusSimiEnvironment_initWithNetGlobulusSimiEnvironment_(NetGlobulusSimiEnvironment *enclosing) {
  J2OBJC_NEW_IMPL(NetGlobulusSimiEnvironment, initWithNetGlobulusSimiEnvironment_, enclosing)
}

NetGlobulusSimiEnvironment *create_NetGlobulusSimiEnvironment_initWithNetGlobulusSimiEnvironment_(NetGlobulusSimiEnvironment *enclosing) {
  J2OBJC_CREATE_IMPL(NetGlobulusSimiEnvironment, initWithNetGlobulusSimiEnvironment_, enclosing)
}

void NetGlobulusSimiEnvironment_popBlockWithNetGlobulusSimiStmt_BlockStmt_withJavaUtilMap_(NetGlobulusSimiEnvironment *self, id<NetGlobulusSimiStmt_BlockStmt> stmt, id<JavaUtilMap> yieldedStmts) {
  NetGlobulusSimiSparseArray *blocks = [((id<JavaUtilMap>) nil_chk(yieldedStmts)) getWithId:stmt];
  if (blocks != nil) {
    [blocks removeWithInt:self->depth_];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetGlobulusSimiEnvironment)