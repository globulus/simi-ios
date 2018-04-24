//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Resolver.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Void.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/Stack.h"
#include "Constants.h"
#include "ErrorHub.h"
#include "Expr.h"
#include "Interpreter.h"
#include "Resolver.h"
#include "Stmt.h"
#include "Token.h"

@class SMResolver_ClassType;
@class SMResolver_FunctionType;

@interface SMResolver () {
 @public
  SMInterpreter *interpreter_;
  JavaUtilStack *scopes_;
  SMResolver_FunctionType *currentFunction_;
  SMResolver_ClassType *currentClass_;
}

- (void)resolveWithSMStmt:(SMStmt *)stmt;

- (void)resolveWithSMExpr:(SMExpr *)expr
        withNSObjectArray:(IOSObjectArray *)params;

- (void)resolveFunctionBlockWithSMExpr_Block:(SMExpr_Block *)block;

- (void)resolveFunctionWithSMStmt_Function:(SMStmt_Function *)function
               withSMResolver_FunctionType:(SMResolver_FunctionType *)type;

- (void)beginScope;

- (void)endScope;

- (jboolean)declareWithSMToken:(SMToken *)name
                   withBoolean:(jboolean)autodefine;

- (void)defineWithSMToken:(SMToken *)name;

- (void)resolveLocalWithSMExpr:(SMExpr *)expr
                   withSMToken:(SMToken *)name;

@end

J2OBJC_FIELD_SETTER(SMResolver, interpreter_, SMInterpreter *)
J2OBJC_FIELD_SETTER(SMResolver, scopes_, JavaUtilStack *)
J2OBJC_FIELD_SETTER(SMResolver, currentFunction_, SMResolver_FunctionType *)
J2OBJC_FIELD_SETTER(SMResolver, currentClass_, SMResolver_ClassType *)

__attribute__((unused)) static void SMResolver_resolveWithSMStmt_(SMResolver *self, SMStmt *stmt);

__attribute__((unused)) static void SMResolver_resolveWithSMExpr_withNSObjectArray_(SMResolver *self, SMExpr *expr, IOSObjectArray *params);

__attribute__((unused)) static void SMResolver_resolveFunctionBlockWithSMExpr_Block_(SMResolver *self, SMExpr_Block *block);

__attribute__((unused)) static void SMResolver_resolveFunctionWithSMStmt_Function_withSMResolver_FunctionType_(SMResolver *self, SMStmt_Function *function, SMResolver_FunctionType *type);

__attribute__((unused)) static void SMResolver_beginScope(SMResolver *self);

__attribute__((unused)) static void SMResolver_endScope(SMResolver *self);

__attribute__((unused)) static jboolean SMResolver_declareWithSMToken_withBoolean_(SMResolver *self, SMToken *name, jboolean autodefine);

__attribute__((unused)) static void SMResolver_defineWithSMToken_(SMResolver *self, SMToken *name);

__attribute__((unused)) static void SMResolver_resolveLocalWithSMExpr_withSMToken_(SMResolver *self, SMExpr *expr, SMToken *name);

typedef NS_ENUM(NSUInteger, SMResolver_FunctionType_Enum) {
  SMResolver_FunctionType_Enum_NONE = 0,
  SMResolver_FunctionType_Enum_FUNCTION = 1,
  SMResolver_FunctionType_Enum_INITIALIZER = 2,
  SMResolver_FunctionType_Enum_METHOD = 3,
};

@interface SMResolver_FunctionType : JavaLangEnum

+ (IOSObjectArray *)values;

+ (SMResolver_FunctionType *)valueOfWithNSString:(NSString *)name;

- (SMResolver_FunctionType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(SMResolver_FunctionType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT SMResolver_FunctionType *SMResolver_FunctionType_values_[];

inline SMResolver_FunctionType *SMResolver_FunctionType_get_NONE(void);
J2OBJC_ENUM_CONSTANT(SMResolver_FunctionType, NONE)

inline SMResolver_FunctionType *SMResolver_FunctionType_get_FUNCTION(void);
J2OBJC_ENUM_CONSTANT(SMResolver_FunctionType, FUNCTION)

inline SMResolver_FunctionType *SMResolver_FunctionType_get_INITIALIZER(void);
J2OBJC_ENUM_CONSTANT(SMResolver_FunctionType, INITIALIZER)

inline SMResolver_FunctionType *SMResolver_FunctionType_get_METHOD(void);
J2OBJC_ENUM_CONSTANT(SMResolver_FunctionType, METHOD)

__attribute__((unused)) static void SMResolver_FunctionType_initWithNSString_withInt_(SMResolver_FunctionType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static SMResolver_FunctionType *new_SMResolver_FunctionType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static IOSObjectArray *SMResolver_FunctionType_values(void);

__attribute__((unused)) static SMResolver_FunctionType *SMResolver_FunctionType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT SMResolver_FunctionType *SMResolver_FunctionType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(SMResolver_FunctionType)

typedef NS_ENUM(NSUInteger, SMResolver_ClassType_Enum) {
  SMResolver_ClassType_Enum_NONE = 0,
  SMResolver_ClassType_Enum_CLASS = 1,
  SMResolver_ClassType_Enum_SUBCLASS = 2,
};

@interface SMResolver_ClassType : JavaLangEnum

+ (IOSObjectArray *)values;

+ (SMResolver_ClassType *)valueOfWithNSString:(NSString *)name;

- (SMResolver_ClassType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(SMResolver_ClassType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT SMResolver_ClassType *SMResolver_ClassType_values_[];

inline SMResolver_ClassType *SMResolver_ClassType_get_NONE(void);
J2OBJC_ENUM_CONSTANT(SMResolver_ClassType, NONE)

inline SMResolver_ClassType *SMResolver_ClassType_get_CLASS(void);
J2OBJC_ENUM_CONSTANT(SMResolver_ClassType, CLASS)

inline SMResolver_ClassType *SMResolver_ClassType_get_SUBCLASS(void);
J2OBJC_ENUM_CONSTANT(SMResolver_ClassType, SUBCLASS)

__attribute__((unused)) static void SMResolver_ClassType_initWithNSString_withInt_(SMResolver_ClassType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static SMResolver_ClassType *new_SMResolver_ClassType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

__attribute__((unused)) static IOSObjectArray *SMResolver_ClassType_values(void);

__attribute__((unused)) static SMResolver_ClassType *SMResolver_ClassType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT SMResolver_ClassType *SMResolver_ClassType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(SMResolver_ClassType)

@implementation SMResolver

- (instancetype __nonnull)initWithSMInterpreter:(SMInterpreter *)interpreter {
  SMResolver_initWithSMInterpreter_(self, interpreter);
  return self;
}

- (void)resolveWithJavaUtilList:(id<JavaUtilList>)statements {
  for (SMStmt * __strong statement in nil_chk(statements)) {
    SMResolver_resolveWithSMStmt_(self, statement);
  }
}

- (JavaLangVoid *)visitBlockExprWithSMExpr_Block:(SMExpr_Block *)stmt
                                     withBoolean:(jboolean)newScope
                                     withBoolean:(jboolean)execute {
  if (newScope) {
    SMResolver_beginScope(self);
  }
  [self resolveWithJavaUtilList:((SMExpr_Block *) nil_chk(stmt))->statements_];
  if (newScope) {
    SMResolver_endScope(self);
  }
  return nil;
}

- (JavaLangVoid *)visitAnnotationStmtWithSMStmt_Annotation:(SMStmt_Annotation *)stmt {
  return nil;
}

- (JavaLangVoid *)visitBreakStmtWithSMStmt_Break:(SMStmt_Break *)stmt {
  return nil;
}

- (JavaLangVoid *)visitClassStmtWithSMStmt_Class:(SMStmt_Class *)stmt
                                     withBoolean:(jboolean)addToEnv {
  SMResolver_declareWithSMToken_withBoolean_(self, ((SMStmt_Class *) nil_chk(stmt))->name_, false);
  SMResolver_defineWithSMToken_(self, stmt->name_);
  SMResolver_ClassType *enclosingClass = currentClass_;
  currentClass_ = JreLoadEnum(SMResolver_ClassType, CLASS);
  jboolean hasSuperclass = stmt->superclasses_ != nil && ![stmt->superclasses_ isEmpty];
  if (hasSuperclass) {
    currentClass_ = JreLoadEnum(SMResolver_ClassType, SUBCLASS);
    for (SMExpr * __strong superclass_ in nil_chk(stmt->superclasses_)) {
      SMResolver_resolveWithSMExpr_withNSObjectArray_(self, superclass_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
    }
    SMResolver_beginScope(self);
    (void) [((id<JavaUtilMap>) nil_chk([((JavaUtilStack *) nil_chk(scopes_)) peek])) putWithId:SMConstants_SUPER withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  }
  SMResolver_beginScope(self);
  (void) [((id<JavaUtilMap>) nil_chk([((JavaUtilStack *) nil_chk(scopes_)) peek])) putWithId:SMConstants_SELF withId:JavaLangBoolean_valueOfWithBoolean_(true)];
  for (SMStmt_Function * __strong method in nil_chk(stmt->methods_)) {
    SMResolver_FunctionType *declaration = JreLoadEnum(SMResolver_FunctionType, METHOD);
    if ([((NSString *) nil_chk(((SMToken *) nil_chk(((SMStmt_Function *) nil_chk(method))->name_))->lexeme_)) isEqual:SMConstants_INIT]) {
      declaration = JreLoadEnum(SMResolver_FunctionType, INITIALIZER);
    }
    SMResolver_resolveFunctionWithSMStmt_Function_withSMResolver_FunctionType_(self, method, declaration);
  }
  SMResolver_endScope(self);
  if (hasSuperclass) SMResolver_endScope(self);
  currentClass_ = enclosingClass;
  return nil;
}

- (JavaLangVoid *)visitContinueStmtWithSMStmt_Continue:(SMStmt_Continue *)stmt {
  return nil;
}

- (JavaLangVoid *)visitExpressionStmtWithSMStmt_Expression:(SMStmt_Expression *)stmt {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMStmt_Expression *) nil_chk(stmt))->expression_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitFunctionStmtWithSMStmt_Function:(SMStmt_Function *)stmt {
  SMResolver_declareWithSMToken_withBoolean_(self, ((SMStmt_Function *) nil_chk(stmt))->name_, false);
  SMResolver_defineWithSMToken_(self, stmt->name_);
  SMResolver_resolveFunctionWithSMStmt_Function_withSMResolver_FunctionType_(self, stmt, JreLoadEnum(SMResolver_FunctionType, FUNCTION));
  return nil;
}

- (JavaLangVoid *)visitElsifStmtWithSMStmt_Elsif:(SMStmt_Elsif *)stmt {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMStmt_Elsif *) nil_chk(stmt))->condition_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->thenBranch_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitIfStmtWithSMStmt_If:(SMStmt_If *)stmt {
  (void) [self visitElsifStmtWithSMStmt_Elsif:((SMStmt_If *) nil_chk(stmt))->ifstmt_];
  for (SMStmt_Elsif * __strong elsif in nil_chk(stmt->elsifs_)) {
    (void) [self visitElsifStmtWithSMStmt_Elsif:elsif];
  }
  if (stmt->elseBranch_ != nil) SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->elseBranch_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitPrintStmtWithSMStmt_Print:(SMStmt_Print *)stmt {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMStmt_Print *) nil_chk(stmt))->expression_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitRescueStmtWithSMStmt_Rescue:(SMStmt_Rescue *)stmt {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMStmt_Rescue *) nil_chk(stmt))->block_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitReturnStmtWithSMStmt_Return:(SMStmt_Return *)stmt {
  if (((SMStmt_Return *) nil_chk(stmt))->value_ != nil) {
    if (currentFunction_ == JreLoadEnum(SMResolver_FunctionType, INITIALIZER)) {
      [((SMErrorHub *) nil_chk(SMErrorHub_sharedInstance())) errorWithSMToken:stmt->keyword_ withNSString:@"Cannot return a value from an initializer."];
    }
    SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->value_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  }
  return nil;
}

- (JavaLangVoid *)visitWhileStmtWithSMStmt_While:(SMStmt_While *)stmt {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMStmt_While *) nil_chk(stmt))->condition_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->body_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitYieldStmtWithSMStmt_Yield:(SMStmt_Yield *)stmt {
  if (((SMStmt_Yield *) nil_chk(stmt))->value_ != nil) {
    if (currentFunction_ == JreLoadEnum(SMResolver_FunctionType, INITIALIZER)) {
      [((SMErrorHub *) nil_chk(SMErrorHub_sharedInstance())) errorWithSMToken:stmt->keyword_ withNSString:@"Cannot yield a value from an initializer."];
    }
    SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->value_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  }
  return nil;
}

- (JavaLangVoid *)visitForStmtWithSMStmt_For:(SMStmt_For *)stmt {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMStmt_For *) nil_chk(stmt))->var_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->iterable_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, stmt->body_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitAnnotationsExprWithSMExpr_Annotations:(SMExpr_Annotations *)expr {
  return nil;
}

- (JavaLangVoid *)visitAssignExprWithSMExpr_Assign:(SMExpr_Assign *)expr {
  if (!SMResolver_declareWithSMToken_withBoolean_(self, ((SMExpr_Assign *) nil_chk(expr))->name_, true)) {
    [((SMErrorHub *) nil_chk(SMErrorHub_sharedInstance())) errorWithSMToken:expr->name_ withNSString:@"Constant with this name already declared in this scope."];
  }
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, expr->value_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveLocalWithSMExpr_withSMToken_(self, expr, expr->name_);
  return nil;
}

- (JavaLangVoid *)visitBinaryExprWithSMExpr_Binary:(SMExpr_Binary *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Binary *) nil_chk(expr))->left_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, expr->right_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitCallExprWithSMExpr_Call:(SMExpr_Call *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Call *) nil_chk(expr))->callee_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  for (SMExpr * __strong argument in nil_chk(expr->arguments_)) {
    SMResolver_resolveWithSMExpr_withNSObjectArray_(self, argument, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  }
  return nil;
}

- (JavaLangVoid *)visitGetExprWithSMExpr_Get:(SMExpr_Get *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Get *) nil_chk(expr))->object_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitGroupingExprWithSMExpr_Grouping:(SMExpr_Grouping *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Grouping *) nil_chk(expr))->expression_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitGuExprWithSMExpr_Gu:(SMExpr_Gu *)expr {
  return nil;
}

- (JavaLangVoid *)visitLiteralExprWithSMExpr_Literal:(SMExpr_Literal *)expr {
  return nil;
}

- (JavaLangVoid *)visitLogicalExprWithSMExpr_Logical:(SMExpr_Logical *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Logical *) nil_chk(expr))->left_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, expr->right_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitSetExprWithSMExpr_Set:(SMExpr_Set *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Set *) nil_chk(expr))->value_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, expr->object_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitSuperExprWithSMExpr_Super:(SMExpr_Super *)expr {
  SMResolver_resolveLocalWithSMExpr_withSMToken_(self, expr, ((SMExpr_Super *) nil_chk(expr))->keyword_);
  return nil;
}

- (JavaLangVoid *)visitSelfExprWithSMExpr_Self:(SMExpr_Self *)expr {
  SMResolver_resolveLocalWithSMExpr_withSMToken_(self, expr, ((SMExpr_Self *) nil_chk(expr))->keyword_);
  return nil;
}

- (JavaLangVoid *)visitUnaryExprWithSMExpr_Unary:(SMExpr_Unary *)expr {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, ((SMExpr_Unary *) nil_chk(expr))->right_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  return nil;
}

- (JavaLangVoid *)visitVariableExprWithSMExpr_Variable:(SMExpr_Variable *)expr {
  if (![((JavaUtilStack *) nil_chk(scopes_)) isEmpty] && [((id<JavaUtilMap>) nil_chk([scopes_ peek])) getWithId:((SMToken *) nil_chk(((SMExpr_Variable *) nil_chk(expr))->name_))->lexeme_] == JreLoadStatic(JavaLangBoolean, FALSE)) {
    [((SMErrorHub *) nil_chk(SMErrorHub_sharedInstance())) errorWithSMToken:((SMExpr_Variable *) nil_chk(expr))->name_ withNSString:@"Cannot read local variable in its own initializer."];
  }
  SMResolver_resolveLocalWithSMExpr_withSMToken_(self, expr, ((SMExpr_Variable *) nil_chk(expr))->name_);
  return nil;
}

- (JavaLangVoid *)visitObjectLiteralExprWithSMExpr_ObjectLiteral:(SMExpr_ObjectLiteral *)expr {
  return nil;
}

- (void)resolveWithSMStmt:(SMStmt *)stmt {
  SMResolver_resolveWithSMStmt_(self, stmt);
}

- (void)resolveWithSMExpr:(SMExpr *)expr
        withNSObjectArray:(IOSObjectArray *)params {
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, expr, params);
}

- (void)resolveFunctionBlockWithSMExpr_Block:(SMExpr_Block *)block {
  SMResolver_resolveFunctionBlockWithSMExpr_Block_(self, block);
}

- (void)resolveFunctionWithSMStmt_Function:(SMStmt_Function *)function
               withSMResolver_FunctionType:(SMResolver_FunctionType *)type {
  SMResolver_resolveFunctionWithSMStmt_Function_withSMResolver_FunctionType_(self, function, type);
}

- (void)beginScope {
  SMResolver_beginScope(self);
}

- (void)endScope {
  SMResolver_endScope(self);
}

- (jboolean)declareWithSMToken:(SMToken *)name
                   withBoolean:(jboolean)autodefine {
  return SMResolver_declareWithSMToken_withBoolean_(self, name, autodefine);
}

- (void)defineWithSMToken:(SMToken *)name {
  SMResolver_defineWithSMToken_(self, name);
}

- (void)resolveLocalWithSMExpr:(SMExpr *)expr
                   withSMToken:(SMToken *)name {
  SMResolver_resolveLocalWithSMExpr_withSMToken_(self, expr, name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, 3, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 18, 19, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 20, 21, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 22, 23, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 24, 25, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 26, 27, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 28, 29, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 30, 31, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 32, 33, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 34, 35, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 36, 37, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 38, 39, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 40, 41, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 42, 43, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 44, 45, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 46, 47, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 48, 49, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 50, 51, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 52, 53, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 54, 55, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 56, 57, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 58, 59, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 60, 61, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, 62, 63, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 64, -1, -1, -1, -1 },
    { NULL, "V", 0x82, 1, 65, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 66, 67, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 68, 69, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 70, 71, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 72, 73, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 74, 75, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSMInterpreter:);
  methods[1].selector = @selector(resolveWithJavaUtilList:);
  methods[2].selector = @selector(visitBlockExprWithSMExpr_Block:withBoolean:withBoolean:);
  methods[3].selector = @selector(visitAnnotationStmtWithSMStmt_Annotation:);
  methods[4].selector = @selector(visitBreakStmtWithSMStmt_Break:);
  methods[5].selector = @selector(visitClassStmtWithSMStmt_Class:withBoolean:);
  methods[6].selector = @selector(visitContinueStmtWithSMStmt_Continue:);
  methods[7].selector = @selector(visitExpressionStmtWithSMStmt_Expression:);
  methods[8].selector = @selector(visitFunctionStmtWithSMStmt_Function:);
  methods[9].selector = @selector(visitElsifStmtWithSMStmt_Elsif:);
  methods[10].selector = @selector(visitIfStmtWithSMStmt_If:);
  methods[11].selector = @selector(visitPrintStmtWithSMStmt_Print:);
  methods[12].selector = @selector(visitRescueStmtWithSMStmt_Rescue:);
  methods[13].selector = @selector(visitReturnStmtWithSMStmt_Return:);
  methods[14].selector = @selector(visitWhileStmtWithSMStmt_While:);
  methods[15].selector = @selector(visitYieldStmtWithSMStmt_Yield:);
  methods[16].selector = @selector(visitForStmtWithSMStmt_For:);
  methods[17].selector = @selector(visitAnnotationsExprWithSMExpr_Annotations:);
  methods[18].selector = @selector(visitAssignExprWithSMExpr_Assign:);
  methods[19].selector = @selector(visitBinaryExprWithSMExpr_Binary:);
  methods[20].selector = @selector(visitCallExprWithSMExpr_Call:);
  methods[21].selector = @selector(visitGetExprWithSMExpr_Get:);
  methods[22].selector = @selector(visitGroupingExprWithSMExpr_Grouping:);
  methods[23].selector = @selector(visitGuExprWithSMExpr_Gu:);
  methods[24].selector = @selector(visitLiteralExprWithSMExpr_Literal:);
  methods[25].selector = @selector(visitLogicalExprWithSMExpr_Logical:);
  methods[26].selector = @selector(visitSetExprWithSMExpr_Set:);
  methods[27].selector = @selector(visitSuperExprWithSMExpr_Super:);
  methods[28].selector = @selector(visitSelfExprWithSMExpr_Self:);
  methods[29].selector = @selector(visitUnaryExprWithSMExpr_Unary:);
  methods[30].selector = @selector(visitVariableExprWithSMExpr_Variable:);
  methods[31].selector = @selector(visitObjectLiteralExprWithSMExpr_ObjectLiteral:);
  methods[32].selector = @selector(resolveWithSMStmt:);
  methods[33].selector = @selector(resolveWithSMExpr:withNSObjectArray:);
  methods[34].selector = @selector(resolveFunctionBlockWithSMExpr_Block:);
  methods[35].selector = @selector(resolveFunctionWithSMStmt_Function:withSMResolver_FunctionType:);
  methods[36].selector = @selector(beginScope);
  methods[37].selector = @selector(endScope);
  methods[38].selector = @selector(declareWithSMToken:withBoolean:);
  methods[39].selector = @selector(defineWithSMToken:);
  methods[40].selector = @selector(resolveLocalWithSMExpr:withSMToken:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "interpreter_", "LSMInterpreter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "globalScope_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x0, -1, -1, 76, -1 },
    { "scopes_", "LJavaUtilStack;", .constantValue.asLong = 0, 0x12, -1, -1, 77, -1 },
    { "currentFunction_", "LSMResolver_FunctionType;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentClass_", "LSMResolver_ClassType;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LSMInterpreter;", "resolve", "LJavaUtilList;", "(Ljava/util/List<LStmt;>;)V", "visitBlockExpr", "LSMExpr_Block;ZZ", "visitAnnotationStmt", "LSMStmt_Annotation;", "visitBreakStmt", "LSMStmt_Break;", "visitClassStmt", "LSMStmt_Class;Z", "visitContinueStmt", "LSMStmt_Continue;", "visitExpressionStmt", "LSMStmt_Expression;", "visitFunctionStmt", "LSMStmt_Function;", "visitElsifStmt", "LSMStmt_Elsif;", "visitIfStmt", "LSMStmt_If;", "visitPrintStmt", "LSMStmt_Print;", "visitRescueStmt", "LSMStmt_Rescue;", "visitReturnStmt", "LSMStmt_Return;", "visitWhileStmt", "LSMStmt_While;", "visitYieldStmt", "LSMStmt_Yield;", "visitForStmt", "LSMStmt_For;", "visitAnnotationsExpr", "LSMExpr_Annotations;", "visitAssignExpr", "LSMExpr_Assign;", "visitBinaryExpr", "LSMExpr_Binary;", "visitCallExpr", "LSMExpr_Call;", "visitGetExpr", "LSMExpr_Get;", "visitGroupingExpr", "LSMExpr_Grouping;", "visitGuExpr", "LSMExpr_Gu;", "visitLiteralExpr", "LSMExpr_Literal;", "visitLogicalExpr", "LSMExpr_Logical;", "visitSetExpr", "LSMExpr_Set;", "visitSuperExpr", "LSMExpr_Super;", "visitSelfExpr", "LSMExpr_Self;", "visitUnaryExpr", "LSMExpr_Unary;", "visitVariableExpr", "LSMExpr_Variable;", "visitObjectLiteralExpr", "LSMExpr_ObjectLiteral;", "LSMStmt;", "LSMExpr;[LNSObject;", "resolveFunctionBlock", "LSMExpr_Block;", "resolveFunction", "LSMStmt_Function;LSMResolver_FunctionType;", "declare", "LSMToken;Z", "define", "LSMToken;", "resolveLocal", "LSMExpr;LSMToken;", "Ljava/util/Set<Ljava/lang/String;>;", "Ljava/util/Stack<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;>;", "LSMResolver_FunctionType;LSMResolver_ClassType;", "Ljava/lang/Object;LExpr$Visitor<Ljava/lang/Void;>;LStmt$Visitor<Ljava/lang/Void;>;" };
  static const J2ObjcClassInfo _SMResolver = { "Resolver", "net.globulus.simi", ptrTable, methods, fields, 7, 0x0, 41, 5, -1, 78, -1, 79, -1 };
  return &_SMResolver;
}

@end

void SMResolver_initWithSMInterpreter_(SMResolver *self, SMInterpreter *interpreter) {
  NSObject_init(self);
  self->globalScope_ = new_JavaUtilHashSet_init();
  self->scopes_ = new_JavaUtilStack_init();
  self->currentFunction_ = JreLoadEnum(SMResolver_FunctionType, NONE);
  self->currentClass_ = JreLoadEnum(SMResolver_ClassType, NONE);
  self->interpreter_ = interpreter;
}

SMResolver *new_SMResolver_initWithSMInterpreter_(SMInterpreter *interpreter) {
  J2OBJC_NEW_IMPL(SMResolver, initWithSMInterpreter_, interpreter)
}

SMResolver *create_SMResolver_initWithSMInterpreter_(SMInterpreter *interpreter) {
  J2OBJC_CREATE_IMPL(SMResolver, initWithSMInterpreter_, interpreter)
}

void SMResolver_resolveWithSMStmt_(SMResolver *self, SMStmt *stmt) {
  (void) [((SMStmt *) nil_chk(stmt)) acceptWithSMStmt_Visitor:self withNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]];
}

void SMResolver_resolveWithSMExpr_withNSObjectArray_(SMResolver *self, SMExpr *expr, IOSObjectArray *params) {
  (void) [((SMExpr *) nil_chk(expr)) acceptWithSMExpr_Visitor:self withNSObjectArray:params];
}

void SMResolver_resolveFunctionBlockWithSMExpr_Block_(SMResolver *self, SMExpr_Block *block) {
  SMResolver_beginScope(self);
  for (SMToken * __strong param in nil_chk(((SMExpr_Block *) nil_chk(block))->params_)) {
    SMResolver_declareWithSMToken_withBoolean_(self, param, false);
    SMResolver_defineWithSMToken_(self, param);
  }
  SMResolver_resolveWithSMExpr_withNSObjectArray_(self, block, [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(false) } count:1 type:NSObject_class_()]);
  SMResolver_endScope(self);
}

void SMResolver_resolveFunctionWithSMStmt_Function_withSMResolver_FunctionType_(SMResolver *self, SMStmt_Function *function, SMResolver_FunctionType *type) {
  SMResolver_FunctionType *enclosingFunction = self->currentFunction_;
  self->currentFunction_ = type;
  SMResolver_resolveFunctionBlockWithSMExpr_Block_(self, ((SMStmt_Function *) nil_chk(function))->block_);
  self->currentFunction_ = enclosingFunction;
}

void SMResolver_beginScope(SMResolver *self) {
  (void) [((JavaUtilStack *) nil_chk(self->scopes_)) pushWithId:new_JavaUtilHashMap_init()];
}

void SMResolver_endScope(SMResolver *self) {
  (void) [((JavaUtilStack *) nil_chk(self->scopes_)) pop];
}

jboolean SMResolver_declareWithSMToken_withBoolean_(SMResolver *self, SMToken *name, jboolean autodefine) {
  NSString *var = ((SMToken *) nil_chk(name))->lexeme_;
  jboolean mutable_ = [((NSString *) nil_chk(var)) java_hasPrefix:SMConstants_MUTABLE];
  if ([((JavaUtilStack *) nil_chk(self->scopes_)) isEmpty]) {
    if ([((id<JavaUtilSet>) nil_chk(self->globalScope_)) containsWithId:var]) {
      return mutable_;
    }
    [((id<JavaUtilSet>) nil_chk(self->globalScope_)) addWithId:var];
    return true;
  }
  for (id<JavaUtilMap> __strong scope in self->scopes_) {
    if ([((id<JavaUtilMap>) nil_chk(scope)) containsKeyWithId:var]) {
      return mutable_;
    }
  }
  id<JavaUtilMap> scope = [self->scopes_ peek];
  (void) [((id<JavaUtilMap>) nil_chk(scope)) putWithId:var withId:JavaLangBoolean_valueOfWithBoolean_(autodefine)];
  return true;
}

void SMResolver_defineWithSMToken_(SMResolver *self, SMToken *name) {
  if ([((JavaUtilStack *) nil_chk(self->scopes_)) isEmpty]) return;
  (void) [((id<JavaUtilMap>) nil_chk([self->scopes_ peek])) putWithId:((SMToken *) nil_chk(name))->lexeme_ withId:JavaLangBoolean_valueOfWithBoolean_(true)];
}

void SMResolver_resolveLocalWithSMExpr_withSMToken_(SMResolver *self, SMExpr *expr, SMToken *name) {
  if ([((id<JavaUtilSet>) nil_chk(self->globalScope_)) containsWithId:((SMToken *) nil_chk(name))->lexeme_]) {
    return;
  }
  for (jint i = [((JavaUtilStack *) nil_chk(self->scopes_)) size] - 1; i >= 0; i--) {
    if ([((id<JavaUtilMap>) nil_chk([self->scopes_ getWithInt:i])) containsKeyWithId:name->lexeme_]) {
      [((SMInterpreter *) nil_chk(self->interpreter_)) resolveWithSMExpr:expr withInt:[self->scopes_ size] - 1 - i];
      return;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMResolver)

J2OBJC_INITIALIZED_DEFN(SMResolver_FunctionType)

SMResolver_FunctionType *SMResolver_FunctionType_values_[4];

@implementation SMResolver_FunctionType

+ (SMResolver_FunctionType *)NONE {
  return JreEnum(SMResolver_FunctionType, NONE);
}

+ (SMResolver_FunctionType *)FUNCTION {
  return JreEnum(SMResolver_FunctionType, FUNCTION);
}

+ (SMResolver_FunctionType *)INITIALIZER {
  return JreEnum(SMResolver_FunctionType, INITIALIZER);
}

+ (SMResolver_FunctionType *)METHOD {
  return JreEnum(SMResolver_FunctionType, METHOD);
}

+ (IOSObjectArray *)values {
  return SMResolver_FunctionType_values();
}

+ (SMResolver_FunctionType *)valueOfWithNSString:(NSString *)name {
  return SMResolver_FunctionType_valueOfWithNSString_(name);
}

- (SMResolver_FunctionType_Enum)toNSEnum {
  return (SMResolver_FunctionType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LSMResolver_FunctionType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMResolver_FunctionType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NONE", "LSMResolver_FunctionType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "FUNCTION", "LSMResolver_FunctionType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "INITIALIZER", "LSMResolver_FunctionType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "METHOD", "LSMResolver_FunctionType;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(SMResolver_FunctionType, NONE), &JreEnum(SMResolver_FunctionType, FUNCTION), &JreEnum(SMResolver_FunctionType, INITIALIZER), &JreEnum(SMResolver_FunctionType, METHOD), "LSMResolver;", "Ljava/lang/Enum<LResolver$FunctionType;>;" };
  static const J2ObjcClassInfo _SMResolver_FunctionType = { "FunctionType", "net.globulus.simi", ptrTable, methods, fields, 7, 0x401a, 2, 4, 6, -1, -1, 7, -1 };
  return &_SMResolver_FunctionType;
}

+ (void)initialize {
  if (self == [SMResolver_FunctionType class]) {
    JreEnum(SMResolver_FunctionType, NONE) = new_SMResolver_FunctionType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_FunctionType_class_(), 0), 0);
    JreEnum(SMResolver_FunctionType, FUNCTION) = new_SMResolver_FunctionType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_FunctionType_class_(), 1), 1);
    JreEnum(SMResolver_FunctionType, INITIALIZER) = new_SMResolver_FunctionType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_FunctionType_class_(), 2), 2);
    JreEnum(SMResolver_FunctionType, METHOD) = new_SMResolver_FunctionType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_FunctionType_class_(), 3), 3);
    J2OBJC_SET_INITIALIZED(SMResolver_FunctionType)
  }
}

@end

void SMResolver_FunctionType_initWithNSString_withInt_(SMResolver_FunctionType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

SMResolver_FunctionType *new_SMResolver_FunctionType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(SMResolver_FunctionType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *SMResolver_FunctionType_values() {
  SMResolver_FunctionType_initialize();
  return [IOSObjectArray arrayWithObjects:SMResolver_FunctionType_values_ count:4 type:SMResolver_FunctionType_class_()];
}

SMResolver_FunctionType *SMResolver_FunctionType_valueOfWithNSString_(NSString *name) {
  SMResolver_FunctionType_initialize();
  for (int i = 0; i < 4; i++) {
    SMResolver_FunctionType *e = SMResolver_FunctionType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

SMResolver_FunctionType *SMResolver_FunctionType_fromOrdinal(NSUInteger ordinal) {
  SMResolver_FunctionType_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return SMResolver_FunctionType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMResolver_FunctionType)

J2OBJC_INITIALIZED_DEFN(SMResolver_ClassType)

SMResolver_ClassType *SMResolver_ClassType_values_[3];

@implementation SMResolver_ClassType

+ (SMResolver_ClassType *)NONE {
  return JreEnum(SMResolver_ClassType, NONE);
}

+ (SMResolver_ClassType *)CLASS {
  return JreEnum(SMResolver_ClassType, CLASS);
}

+ (SMResolver_ClassType *)SUBCLASS {
  return JreEnum(SMResolver_ClassType, SUBCLASS);
}

+ (IOSObjectArray *)values {
  return SMResolver_ClassType_values();
}

+ (SMResolver_ClassType *)valueOfWithNSString:(NSString *)name {
  return SMResolver_ClassType_valueOfWithNSString_(name);
}

- (SMResolver_ClassType_Enum)toNSEnum {
  return (SMResolver_ClassType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LSMResolver_ClassType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LSMResolver_ClassType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NONE", "LSMResolver_ClassType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "CLASS", "LSMResolver_ClassType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "SUBCLASS", "LSMResolver_ClassType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(SMResolver_ClassType, NONE), &JreEnum(SMResolver_ClassType, CLASS), &JreEnum(SMResolver_ClassType, SUBCLASS), "LSMResolver;", "Ljava/lang/Enum<LResolver$ClassType;>;" };
  static const J2ObjcClassInfo _SMResolver_ClassType = { "ClassType", "net.globulus.simi", ptrTable, methods, fields, 7, 0x401a, 2, 3, 5, -1, -1, 6, -1 };
  return &_SMResolver_ClassType;
}

+ (void)initialize {
  if (self == [SMResolver_ClassType class]) {
    JreEnum(SMResolver_ClassType, NONE) = new_SMResolver_ClassType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_ClassType_class_(), 0), 0);
    JreEnum(SMResolver_ClassType, CLASS) = new_SMResolver_ClassType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_ClassType_class_(), 1), 1);
    JreEnum(SMResolver_ClassType, SUBCLASS) = new_SMResolver_ClassType_initWithNSString_withInt_(JreEnumConstantName(SMResolver_ClassType_class_(), 2), 2);
    J2OBJC_SET_INITIALIZED(SMResolver_ClassType)
  }
}

@end

void SMResolver_ClassType_initWithNSString_withInt_(SMResolver_ClassType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

SMResolver_ClassType *new_SMResolver_ClassType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(SMResolver_ClassType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *SMResolver_ClassType_values() {
  SMResolver_ClassType_initialize();
  return [IOSObjectArray arrayWithObjects:SMResolver_ClassType_values_ count:3 type:SMResolver_ClassType_class_()];
}

SMResolver_ClassType *SMResolver_ClassType_valueOfWithNSString_(NSString *name) {
  SMResolver_ClassType_initialize();
  for (int i = 0; i < 3; i++) {
    SMResolver_ClassType *e = SMResolver_ClassType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

SMResolver_ClassType *SMResolver_ClassType_fromOrdinal(NSUInteger ordinal) {
  SMResolver_ClassType_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return SMResolver_ClassType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMResolver_ClassType)
