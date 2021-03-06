//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Expr.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiExpr")
#ifdef RESTRICT_NetGlobulusSimiExpr
#define INCLUDE_ALL_NetGlobulusSimiExpr 0
#else
#define INCLUDE_ALL_NetGlobulusSimiExpr 1
#endif
#undef RESTRICT_NetGlobulusSimiExpr
#ifdef INCLUDE_SMExpr_Yield
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_ObjectLiteral
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Variable
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Unary
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Self
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Super
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Set
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Logical
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Literal
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Ivic
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Gu
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Grouping
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Get
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Call
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Binary
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_ObjectDecomp
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Assign
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Annotations
#define INCLUDE_SMExpr 1
#endif
#ifdef INCLUDE_SMExpr_Block
#define INCLUDE_SMExpr 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMExpr_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr))
#define SMExpr_

#define RESTRICT_NetGlobulusSimiCodifiable 1
#define INCLUDE_SMCodifiable 1
#include "Codifiable.h"

@class IOSObjectArray;
@protocol SMExpr_Visitor;

@interface SMExpr : NSObject < SMCodifiable >

#pragma mark Package-Private

- (instancetype __nonnull)init;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr)

FOUNDATION_EXPORT void SMExpr_init(SMExpr *self);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr)

@compatibility_alias NetGlobulusSimiExpr SMExpr;

#endif

#if !defined (SMExpr_Visitor_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Visitor))
#define SMExpr_Visitor_

@class SMExpr_Annotations;
@class SMExpr_Assign;
@class SMExpr_Binary;
@class SMExpr_Block;
@class SMExpr_Call;
@class SMExpr_Get;
@class SMExpr_Grouping;
@class SMExpr_Gu;
@class SMExpr_Ivic;
@class SMExpr_Literal;
@class SMExpr_Logical;
@class SMExpr_ObjectLiteral;
@class SMExpr_Self;
@class SMExpr_Set;
@class SMExpr_Super;
@class SMExpr_Unary;
@class SMExpr_Variable;

@protocol SMExpr_Visitor < JavaObject >

- (id)visitAnnotationsExprWithSMExpr_Annotations:(SMExpr_Annotations *)expr;

- (id)visitAssignExprWithSMExpr_Assign:(SMExpr_Assign *)expr;

- (id)visitBinaryExprWithSMExpr_Binary:(SMExpr_Binary *)expr;

- (id)visitBlockExprWithSMExpr_Block:(SMExpr_Block *)expr
                         withBoolean:(jboolean)newScope
                         withBoolean:(jboolean)execute;

- (id)visitCallExprWithSMExpr_Call:(SMExpr_Call *)expr;

- (id)visitGetExprWithSMExpr_Get:(SMExpr_Get *)expr;

- (id)visitGroupingExprWithSMExpr_Grouping:(SMExpr_Grouping *)expr;

- (id)visitGuExprWithSMExpr_Gu:(SMExpr_Gu *)expr;

- (id)visitIvicExprWithSMExpr_Ivic:(SMExpr_Ivic *)expr;

- (id)visitLiteralExprWithSMExpr_Literal:(SMExpr_Literal *)expr;

- (id)visitLogicalExprWithSMExpr_Logical:(SMExpr_Logical *)expr;

- (id)visitSetExprWithSMExpr_Set:(SMExpr_Set *)expr;

- (id)visitSuperExprWithSMExpr_Super:(SMExpr_Super *)expr;

- (id)visitSelfExprWithSMExpr_Self:(SMExpr_Self *)expr;

- (id)visitUnaryExprWithSMExpr_Unary:(SMExpr_Unary *)expr;

- (id)visitVariableExprWithSMExpr_Variable:(SMExpr_Variable *)expr;

- (id)visitObjectLiteralExprWithSMExpr_ObjectLiteral:(SMExpr_ObjectLiteral *)expr;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Visitor)

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Visitor)

#endif

#if !defined (SMExpr_Block_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Block))
#define SMExpr_Block_

#define RESTRICT_NetGlobulusSimiSimiBlock 1
#define INCLUDE_SMSimiBlock 1
#include "SimiBlock.h"

@class IOSObjectArray;
@class SMToken;
@protocol JavaUtilList;
@protocol SMExpr_Visitor;

@interface SMExpr_Block : SMExpr < SMSimiBlock > {
 @public
  SMToken *declaration_;
  id<JavaUtilList> params_;
  id<JavaUtilList> statements_;
  jboolean canReturn_;
  jboolean isNative_;
}

#pragma mark Public

- (jboolean)canReturn;

- (NSString *)getFileName;

- (jint)getLineNumber;

- (id<JavaUtilList>)getStatements;

- (jboolean)hasBreakPoint;

- (jboolean)isEmpty;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

- (void)yieldWithInt:(jint)index;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)declaration
                         withJavaUtilList:(id<JavaUtilList>)params
                         withJavaUtilList:(id<JavaUtilList>)statements
                              withBoolean:(jboolean)canReturn;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst
               withNSString:(NSString *)name;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Block)

J2OBJC_FIELD_SETTER(SMExpr_Block, declaration_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Block, params_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMExpr_Block, statements_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMExpr_Block_initWithSMToken_withJavaUtilList_withJavaUtilList_withBoolean_(SMExpr_Block *self, SMToken *declaration, id<JavaUtilList> params, id<JavaUtilList> statements, jboolean canReturn);

FOUNDATION_EXPORT SMExpr_Block *new_SMExpr_Block_initWithSMToken_withJavaUtilList_withJavaUtilList_withBoolean_(SMToken *declaration, id<JavaUtilList> params, id<JavaUtilList> statements, jboolean canReturn) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Block *create_SMExpr_Block_initWithSMToken_withJavaUtilList_withJavaUtilList_withBoolean_(SMToken *declaration, id<JavaUtilList> params, id<JavaUtilList> statements, jboolean canReturn);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Block)

#endif

#if !defined (SMExpr_Annotations_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Annotations))
#define SMExpr_Annotations_

@class IOSObjectArray;
@protocol JavaUtilList;
@protocol SMExpr_Visitor;

@interface SMExpr_Annotations : SMExpr {
 @public
  id<JavaUtilList> tokens_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithJavaUtilList:(id<JavaUtilList>)tokens;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Annotations)

J2OBJC_FIELD_SETTER(SMExpr_Annotations, tokens_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMExpr_Annotations_initWithJavaUtilList_(SMExpr_Annotations *self, id<JavaUtilList> tokens);

FOUNDATION_EXPORT SMExpr_Annotations *new_SMExpr_Annotations_initWithJavaUtilList_(id<JavaUtilList> tokens) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Annotations *create_SMExpr_Annotations_initWithJavaUtilList_(id<JavaUtilList> tokens);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Annotations)

#endif

#if !defined (SMExpr_Assign_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Assign))
#define SMExpr_Assign_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol JavaUtilList;
@protocol SMExpr_Visitor;

@interface SMExpr_Assign : SMExpr {
 @public
  SMToken *name_;
  SMToken *operator__;
  SMExpr *value_;
  id<JavaUtilList> annotations_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)name
                              withSMToken:(SMToken *)operator_
                               withSMExpr:(SMExpr *)value
                         withJavaUtilList:(id<JavaUtilList>)annotations;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Assign)

J2OBJC_FIELD_SETTER(SMExpr_Assign, name_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Assign, operator__, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Assign, value_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Assign, annotations_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMExpr_Assign_initWithSMToken_withSMToken_withSMExpr_withJavaUtilList_(SMExpr_Assign *self, SMToken *name, SMToken *operator_, SMExpr *value, id<JavaUtilList> annotations);

FOUNDATION_EXPORT SMExpr_Assign *new_SMExpr_Assign_initWithSMToken_withSMToken_withSMExpr_withJavaUtilList_(SMToken *name, SMToken *operator_, SMExpr *value, id<JavaUtilList> annotations) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Assign *create_SMExpr_Assign_initWithSMToken_withSMToken_withSMExpr_withJavaUtilList_(SMToken *name, SMToken *operator_, SMExpr *value, id<JavaUtilList> annotations);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Assign)

#endif

#if !defined (SMExpr_ObjectDecomp_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_ObjectDecomp))
#define SMExpr_ObjectDecomp_

@class IOSObjectArray;
@protocol JavaUtilList;
@protocol SMExpr_Visitor;

@interface SMExpr_ObjectDecomp : SMExpr {
 @public
  id<JavaUtilList> assigns_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithJavaUtilList:(id<JavaUtilList>)assigns;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_ObjectDecomp)

J2OBJC_FIELD_SETTER(SMExpr_ObjectDecomp, assigns_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMExpr_ObjectDecomp_initWithJavaUtilList_(SMExpr_ObjectDecomp *self, id<JavaUtilList> assigns);

FOUNDATION_EXPORT SMExpr_ObjectDecomp *new_SMExpr_ObjectDecomp_initWithJavaUtilList_(id<JavaUtilList> assigns) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_ObjectDecomp *create_SMExpr_ObjectDecomp_initWithJavaUtilList_(id<JavaUtilList> assigns);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_ObjectDecomp)

#endif

#if !defined (SMExpr_Binary_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Binary))
#define SMExpr_Binary_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Binary : SMExpr {
 @public
  SMExpr *left_;
  SMToken *operator__;
  SMExpr *right_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)left
                             withSMToken:(SMToken *)operator_
                              withSMExpr:(SMExpr *)right;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Binary)

J2OBJC_FIELD_SETTER(SMExpr_Binary, left_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Binary, operator__, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Binary, right_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Binary_initWithSMExpr_withSMToken_withSMExpr_(SMExpr_Binary *self, SMExpr *left, SMToken *operator_, SMExpr *right);

FOUNDATION_EXPORT SMExpr_Binary *new_SMExpr_Binary_initWithSMExpr_withSMToken_withSMExpr_(SMExpr *left, SMToken *operator_, SMExpr *right) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Binary *create_SMExpr_Binary_initWithSMExpr_withSMToken_withSMExpr_(SMExpr *left, SMToken *operator_, SMExpr *right);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Binary)

#endif

#if !defined (SMExpr_Call_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Call))
#define SMExpr_Call_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol JavaUtilList;
@protocol SMExpr_Visitor;

@interface SMExpr_Call : SMExpr {
 @public
  SMExpr *callee_;
  SMToken *paren_;
  id<JavaUtilList> arguments_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)callee
                             withSMToken:(SMToken *)paren
                        withJavaUtilList:(id<JavaUtilList>)arguments;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Call)

J2OBJC_FIELD_SETTER(SMExpr_Call, callee_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Call, paren_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Call, arguments_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMExpr_Call_initWithSMExpr_withSMToken_withJavaUtilList_(SMExpr_Call *self, SMExpr *callee, SMToken *paren, id<JavaUtilList> arguments);

FOUNDATION_EXPORT SMExpr_Call *new_SMExpr_Call_initWithSMExpr_withSMToken_withJavaUtilList_(SMExpr *callee, SMToken *paren, id<JavaUtilList> arguments) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Call *create_SMExpr_Call_initWithSMExpr_withSMToken_withJavaUtilList_(SMExpr *callee, SMToken *paren, id<JavaUtilList> arguments);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Call)

#endif

#if !defined (SMExpr_Get_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Get))
#define SMExpr_Get_

@class IOSObjectArray;
@class JavaLangInteger;
@class SMExpr;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Get : SMExpr {
 @public
  SMToken *origin_;
  SMExpr *object_;
  SMExpr *name_;
  JavaLangInteger *arity_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)origin
                               withSMExpr:(SMExpr *)object
                               withSMExpr:(SMExpr *)name
                      withJavaLangInteger:(JavaLangInteger *)arity;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Get)

J2OBJC_FIELD_SETTER(SMExpr_Get, origin_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Get, object_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Get, name_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Get, arity_, JavaLangInteger *)

FOUNDATION_EXPORT void SMExpr_Get_initWithSMToken_withSMExpr_withSMExpr_withJavaLangInteger_(SMExpr_Get *self, SMToken *origin, SMExpr *object, SMExpr *name, JavaLangInteger *arity);

FOUNDATION_EXPORT SMExpr_Get *new_SMExpr_Get_initWithSMToken_withSMExpr_withSMExpr_withJavaLangInteger_(SMToken *origin, SMExpr *object, SMExpr *name, JavaLangInteger *arity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Get *create_SMExpr_Get_initWithSMToken_withSMExpr_withSMExpr_withJavaLangInteger_(SMToken *origin, SMExpr *object, SMExpr *name, JavaLangInteger *arity);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Get)

#endif

#if !defined (SMExpr_Grouping_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Grouping))
#define SMExpr_Grouping_

@class IOSObjectArray;
@class SMExpr;
@protocol SMExpr_Visitor;

@interface SMExpr_Grouping : SMExpr {
 @public
  SMExpr *expression_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)expression;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Grouping)

J2OBJC_FIELD_SETTER(SMExpr_Grouping, expression_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Grouping_initWithSMExpr_(SMExpr_Grouping *self, SMExpr *expression);

FOUNDATION_EXPORT SMExpr_Grouping *new_SMExpr_Grouping_initWithSMExpr_(SMExpr *expression) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Grouping *create_SMExpr_Grouping_initWithSMExpr_(SMExpr *expression);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Grouping)

#endif

#if !defined (SMExpr_Gu_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Gu))
#define SMExpr_Gu_

@class IOSObjectArray;
@class SMExpr;
@protocol SMExpr_Visitor;

@interface SMExpr_Gu : SMExpr {
 @public
  SMExpr *expr_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)expr;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Gu)

J2OBJC_FIELD_SETTER(SMExpr_Gu, expr_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Gu_initWithSMExpr_(SMExpr_Gu *self, SMExpr *expr);

FOUNDATION_EXPORT SMExpr_Gu *new_SMExpr_Gu_initWithSMExpr_(SMExpr *expr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Gu *create_SMExpr_Gu_initWithSMExpr_(SMExpr *expr);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Gu)

#endif

#if !defined (SMExpr_Ivic_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Ivic))
#define SMExpr_Ivic_

@class IOSObjectArray;
@class SMExpr;
@protocol SMExpr_Visitor;

@interface SMExpr_Ivic : SMExpr {
 @public
  SMExpr *expr_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)expr;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Ivic)

J2OBJC_FIELD_SETTER(SMExpr_Ivic, expr_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Ivic_initWithSMExpr_(SMExpr_Ivic *self, SMExpr *expr);

FOUNDATION_EXPORT SMExpr_Ivic *new_SMExpr_Ivic_initWithSMExpr_(SMExpr *expr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Ivic *create_SMExpr_Ivic_initWithSMExpr_(SMExpr *expr);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Ivic)

#endif

#if !defined (SMExpr_Literal_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Literal))
#define SMExpr_Literal_

@class IOSObjectArray;
@class SMSimiValue;
@protocol SMExpr_Visitor;

@interface SMExpr_Literal : SMExpr {
 @public
  SMSimiValue *value_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMSimiValue:(SMSimiValue *)value;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Literal)

J2OBJC_FIELD_SETTER(SMExpr_Literal, value_, SMSimiValue *)

FOUNDATION_EXPORT void SMExpr_Literal_initWithSMSimiValue_(SMExpr_Literal *self, SMSimiValue *value);

FOUNDATION_EXPORT SMExpr_Literal *new_SMExpr_Literal_initWithSMSimiValue_(SMSimiValue *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Literal *create_SMExpr_Literal_initWithSMSimiValue_(SMSimiValue *value);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Literal)

#endif

#if !defined (SMExpr_Logical_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Logical))
#define SMExpr_Logical_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Logical : SMExpr {
 @public
  SMExpr *left_;
  SMToken *operator__;
  SMExpr *right_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)left
                             withSMToken:(SMToken *)operator_
                              withSMExpr:(SMExpr *)right;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Logical)

J2OBJC_FIELD_SETTER(SMExpr_Logical, left_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Logical, operator__, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Logical, right_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Logical_initWithSMExpr_withSMToken_withSMExpr_(SMExpr_Logical *self, SMExpr *left, SMToken *operator_, SMExpr *right);

FOUNDATION_EXPORT SMExpr_Logical *new_SMExpr_Logical_initWithSMExpr_withSMToken_withSMExpr_(SMExpr *left, SMToken *operator_, SMExpr *right) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Logical *create_SMExpr_Logical_initWithSMExpr_withSMToken_withSMExpr_(SMExpr *left, SMToken *operator_, SMExpr *right);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Logical)

#endif

#if !defined (SMExpr_Set_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Set))
#define SMExpr_Set_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Set : SMExpr {
 @public
  SMToken *origin_;
  SMExpr *object_;
  SMExpr *name_;
  SMExpr *value_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)origin
                               withSMExpr:(SMExpr *)object
                               withSMExpr:(SMExpr *)name
                               withSMExpr:(SMExpr *)value;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Set)

J2OBJC_FIELD_SETTER(SMExpr_Set, origin_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Set, object_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Set, name_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Set, value_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Set_initWithSMToken_withSMExpr_withSMExpr_withSMExpr_(SMExpr_Set *self, SMToken *origin, SMExpr *object, SMExpr *name, SMExpr *value);

FOUNDATION_EXPORT SMExpr_Set *new_SMExpr_Set_initWithSMToken_withSMExpr_withSMExpr_withSMExpr_(SMToken *origin, SMExpr *object, SMExpr *name, SMExpr *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Set *create_SMExpr_Set_initWithSMToken_withSMExpr_withSMExpr_withSMExpr_(SMToken *origin, SMExpr *object, SMExpr *name, SMExpr *value);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Set)

#endif

#if !defined (SMExpr_Super_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Super))
#define SMExpr_Super_

@class IOSObjectArray;
@class JavaLangInteger;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Super : SMExpr {
 @public
  SMToken *keyword_;
  SMToken *superclass__;
  SMToken *method_;
  JavaLangInteger *arity_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)keyword
                              withSMToken:(SMToken *)superclass_
                              withSMToken:(SMToken *)method
                      withJavaLangInteger:(JavaLangInteger *)arity;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Super)

J2OBJC_FIELD_SETTER(SMExpr_Super, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Super, superclass__, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Super, method_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Super, arity_, JavaLangInteger *)

FOUNDATION_EXPORT void SMExpr_Super_initWithSMToken_withSMToken_withSMToken_withJavaLangInteger_(SMExpr_Super *self, SMToken *keyword, SMToken *superclass_, SMToken *method, JavaLangInteger *arity);

FOUNDATION_EXPORT SMExpr_Super *new_SMExpr_Super_initWithSMToken_withSMToken_withSMToken_withJavaLangInteger_(SMToken *keyword, SMToken *superclass_, SMToken *method, JavaLangInteger *arity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Super *create_SMExpr_Super_initWithSMToken_withSMToken_withSMToken_withJavaLangInteger_(SMToken *keyword, SMToken *superclass_, SMToken *method, JavaLangInteger *arity);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Super)

#endif

#if !defined (SMExpr_Self_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Self))
#define SMExpr_Self_

@class IOSObjectArray;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Self : SMExpr {
 @public
  SMToken *keyword_;
  SMToken *specifier_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)keyword
                              withSMToken:(SMToken *)specifier;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Self)

J2OBJC_FIELD_SETTER(SMExpr_Self, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Self, specifier_, SMToken *)

FOUNDATION_EXPORT void SMExpr_Self_initWithSMToken_withSMToken_(SMExpr_Self *self, SMToken *keyword, SMToken *specifier);

FOUNDATION_EXPORT SMExpr_Self *new_SMExpr_Self_initWithSMToken_withSMToken_(SMToken *keyword, SMToken *specifier) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Self *create_SMExpr_Self_initWithSMToken_withSMToken_(SMToken *keyword, SMToken *specifier);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Self)

#endif

#if !defined (SMExpr_Unary_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Unary))
#define SMExpr_Unary_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Unary : SMExpr {
 @public
  SMToken *operator__;
  SMExpr *right_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)operator_
                               withSMExpr:(SMExpr *)right;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Unary)

J2OBJC_FIELD_SETTER(SMExpr_Unary, operator__, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Unary, right_, SMExpr *)

FOUNDATION_EXPORT void SMExpr_Unary_initWithSMToken_withSMExpr_(SMExpr_Unary *self, SMToken *operator_, SMExpr *right);

FOUNDATION_EXPORT SMExpr_Unary *new_SMExpr_Unary_initWithSMToken_withSMExpr_(SMToken *operator_, SMExpr *right) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Unary *create_SMExpr_Unary_initWithSMToken_withSMExpr_(SMToken *operator_, SMExpr *right);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Unary)

#endif

#if !defined (SMExpr_Variable_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Variable))
#define SMExpr_Variable_

@class IOSObjectArray;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Variable : SMExpr {
 @public
  SMToken *name_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)name;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Variable)

J2OBJC_FIELD_SETTER(SMExpr_Variable, name_, SMToken *)

FOUNDATION_EXPORT void SMExpr_Variable_initWithSMToken_(SMExpr_Variable *self, SMToken *name);

FOUNDATION_EXPORT SMExpr_Variable *new_SMExpr_Variable_initWithSMToken_(SMToken *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Variable *create_SMExpr_Variable_initWithSMToken_(SMToken *name);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Variable)

#endif

#if !defined (SMExpr_ObjectLiteral_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_ObjectLiteral))
#define SMExpr_ObjectLiteral_

@class IOSObjectArray;
@class SMToken;
@protocol JavaUtilList;
@protocol SMExpr_Visitor;

@interface SMExpr_ObjectLiteral : SMExpr {
 @public
  SMToken *opener_;
  id<JavaUtilList> props_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)opener
                         withJavaUtilList:(id<JavaUtilList>)props;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_ObjectLiteral)

J2OBJC_FIELD_SETTER(SMExpr_ObjectLiteral, opener_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_ObjectLiteral, props_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMExpr_ObjectLiteral_initWithSMToken_withJavaUtilList_(SMExpr_ObjectLiteral *self, SMToken *opener, id<JavaUtilList> props);

FOUNDATION_EXPORT SMExpr_ObjectLiteral *new_SMExpr_ObjectLiteral_initWithSMToken_withJavaUtilList_(SMToken *opener, id<JavaUtilList> props) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_ObjectLiteral *create_SMExpr_ObjectLiteral_initWithSMToken_withJavaUtilList_(SMToken *opener, id<JavaUtilList> props);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_ObjectLiteral)

#endif

#if !defined (SMExpr_Yield_) && (INCLUDE_ALL_NetGlobulusSimiExpr || defined(INCLUDE_SMExpr_Yield))
#define SMExpr_Yield_

@class IOSObjectArray;
@class SMExpr;
@class SMExpr_Call;
@class SMToken;
@protocol SMExpr_Visitor;

@interface SMExpr_Yield : SMExpr {
 @public
  SMExpr *var_;
  SMToken *assign_;
  SMToken *keyword_;
  SMExpr_Call *value_;
}

#pragma mark Public

- (NSString *)getFileName;

- (jint)getLineNumber;

- (jboolean)hasBreakPoint;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)var
                             withSMToken:(SMToken *)assign
                             withSMToken:(SMToken *)keyword
                         withSMExpr_Call:(SMExpr_Call *)value;

- (id)acceptWithSMExpr_Visitor:(id<SMExpr_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMExpr_Yield)

J2OBJC_FIELD_SETTER(SMExpr_Yield, var_, SMExpr *)
J2OBJC_FIELD_SETTER(SMExpr_Yield, assign_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Yield, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMExpr_Yield, value_, SMExpr_Call *)

FOUNDATION_EXPORT void SMExpr_Yield_initWithSMExpr_withSMToken_withSMToken_withSMExpr_Call_(SMExpr_Yield *self, SMExpr *var, SMToken *assign, SMToken *keyword, SMExpr_Call *value);

FOUNDATION_EXPORT SMExpr_Yield *new_SMExpr_Yield_initWithSMExpr_withSMToken_withSMToken_withSMExpr_Call_(SMExpr *var, SMToken *assign, SMToken *keyword, SMExpr_Call *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMExpr_Yield *create_SMExpr_Yield_initWithSMExpr_withSMToken_withSMToken_withSMExpr_Call_(SMExpr *var, SMToken *assign, SMToken *keyword, SMExpr_Call *value);

J2OBJC_TYPE_LITERAL_HEADER(SMExpr_Yield)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiExpr")
