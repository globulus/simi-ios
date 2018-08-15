//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Stmt.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiStmt")
#ifdef RESTRICT_NetGlobulusSimiStmt
#define INCLUDE_ALL_NetGlobulusSimiStmt 0
#else
#define INCLUDE_ALL_NetGlobulusSimiStmt 1
#endif
#undef RESTRICT_NetGlobulusSimiStmt
#ifdef INCLUDE_SMStmt_Yield
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_For
#define INCLUDE_SMStmt 1
#define INCLUDE_SMStmt_BlockStmt 1
#endif
#ifdef INCLUDE_SMStmt_While
#define INCLUDE_SMStmt 1
#define INCLUDE_SMStmt_BlockStmt 1
#endif
#ifdef INCLUDE_SMStmt_Return
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Import
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Rescue
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Print
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_If
#define INCLUDE_SMStmt 1
#define INCLUDE_SMStmt_BlockStmt 1
#endif
#ifdef INCLUDE_SMStmt_Elsif
#define INCLUDE_SMStmt 1
#define INCLUDE_SMStmt_BlockStmt 1
#endif
#ifdef INCLUDE_SMStmt_Function
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Expression
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Continue
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Class
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Break
#define INCLUDE_SMStmt 1
#endif
#ifdef INCLUDE_SMStmt_Annotation
#define INCLUDE_SMStmt 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMStmt_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt))
#define SMStmt_

#define RESTRICT_NetGlobulusSimiSimiStatement 1
#define INCLUDE_SMSimiStatement 1
#include "SimiStatement.h"

#define RESTRICT_NetGlobulusSimiCodifiable 1
#define INCLUDE_SMCodifiable 1
#include "Codifiable.h"

@class IOSObjectArray;
@protocol SMStmt_Visitor;

@interface SMStmt : NSObject < SMSimiStatement, SMCodifiable >

#pragma mark Package-Private

- (instancetype __nonnull)init;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt)

FOUNDATION_EXPORT void SMStmt_init(SMStmt *self);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt)

@compatibility_alias NetGlobulusSimiStmt SMStmt;

#endif

#if !defined (SMStmt_Visitor_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Visitor))
#define SMStmt_Visitor_

@class SMStmt_Annotation;
@class SMStmt_Break;
@class SMStmt_Class;
@class SMStmt_Continue;
@class SMStmt_Elsif;
@class SMStmt_Expression;
@class SMStmt_For;
@class SMStmt_Function;
@class SMStmt_If;
@class SMStmt_Import;
@class SMStmt_Print;
@class SMStmt_Rescue;
@class SMStmt_Return;
@class SMStmt_While;
@class SMStmt_Yield;

@protocol SMStmt_Visitor < JavaObject >

- (id)visitAnnotationStmtWithSMStmt_Annotation:(SMStmt_Annotation *)stmt;

- (id)visitBreakStmtWithSMStmt_Break:(SMStmt_Break *)stmt;

- (id)visitClassStmtWithSMStmt_Class:(SMStmt_Class *)stmt
                         withBoolean:(jboolean)addToEnv;

- (id)visitContinueStmtWithSMStmt_Continue:(SMStmt_Continue *)stmt;

- (id)visitElsifStmtWithSMStmt_Elsif:(SMStmt_Elsif *)stmt;

- (id)visitExpressionStmtWithSMStmt_Expression:(SMStmt_Expression *)stmt;

- (id)visitFunctionStmtWithSMStmt_Function:(SMStmt_Function *)stmt;

- (id)visitForStmtWithSMStmt_For:(SMStmt_For *)stmt;

- (id)visitIfStmtWithSMStmt_If:(SMStmt_If *)stmt;

- (id)visitImportStmtWithSMStmt_Import:(SMStmt_Import *)stmt;

- (id)visitPrintStmtWithSMStmt_Print:(SMStmt_Print *)stmt;

- (id)visitRescueStmtWithSMStmt_Rescue:(SMStmt_Rescue *)stmt;

- (id)visitReturnStmtWithSMStmt_Return:(SMStmt_Return *)stmt;

- (id)visitWhileStmtWithSMStmt_While:(SMStmt_While *)stmt;

- (id)visitYieldStmtWithSMStmt_Yield:(SMStmt_Yield *)stmt;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Visitor)

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Visitor)

#endif

#if !defined (SMStmt_BlockStmt_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_BlockStmt))
#define SMStmt_BlockStmt_

@protocol JavaUtilList;

@protocol SMStmt_BlockStmt < JavaObject >

- (id<JavaUtilList>)getChildren;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_BlockStmt)

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_BlockStmt)

#endif

#if !defined (SMStmt_Annotation_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Annotation))
#define SMStmt_Annotation_

@class IOSObjectArray;
@class SMExpr;
@protocol SMStmt_Visitor;

@interface SMStmt_Annotation : SMStmt {
 @public
  SMExpr *expr_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)expr;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Annotation)

J2OBJC_FIELD_SETTER(SMStmt_Annotation, expr_, SMExpr *)

FOUNDATION_EXPORT void SMStmt_Annotation_initWithSMExpr_(SMStmt_Annotation *self, SMExpr *expr);

FOUNDATION_EXPORT SMStmt_Annotation *new_SMStmt_Annotation_initWithSMExpr_(SMExpr *expr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Annotation *create_SMStmt_Annotation_initWithSMExpr_(SMExpr *expr);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Annotation)

#endif

#if !defined (SMStmt_Break_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Break))
#define SMStmt_Break_

@class IOSObjectArray;
@class SMToken;
@protocol SMStmt_Visitor;

@interface SMStmt_Break : SMStmt {
 @public
  SMToken *name_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)name;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Break)

J2OBJC_FIELD_SETTER(SMStmt_Break, name_, SMToken *)

FOUNDATION_EXPORT void SMStmt_Break_initWithSMToken_(SMStmt_Break *self, SMToken *name);

FOUNDATION_EXPORT SMStmt_Break *new_SMStmt_Break_initWithSMToken_(SMToken *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Break *create_SMStmt_Break_initWithSMToken_(SMToken *name);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Break)

#endif

#if !defined (SMStmt_Class_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Class))
#define SMStmt_Class_

@class IOSObjectArray;
@class SMToken;
@protocol JavaUtilList;
@protocol SMStmt_Visitor;

@interface SMStmt_Class : SMStmt {
 @public
  SMToken *opener_;
  SMToken *name_;
  id<JavaUtilList> superclasses_;
  id<JavaUtilList> mixins_;
  id<JavaUtilList> constants_;
  id<JavaUtilList> innerClasses_;
  id<JavaUtilList> methods_;
  id<JavaUtilList> annotations_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)opener
                              withSMToken:(SMToken *)name
                         withJavaUtilList:(id<JavaUtilList>)superclasses
                         withJavaUtilList:(id<JavaUtilList>)mixins
                         withJavaUtilList:(id<JavaUtilList>)constants
                         withJavaUtilList:(id<JavaUtilList>)innerClasses
                         withJavaUtilList:(id<JavaUtilList>)methods
                         withJavaUtilList:(id<JavaUtilList>)annotations;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Class)

J2OBJC_FIELD_SETTER(SMStmt_Class, opener_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Class, name_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Class, superclasses_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMStmt_Class, mixins_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMStmt_Class, constants_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMStmt_Class, innerClasses_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMStmt_Class, methods_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMStmt_Class, annotations_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMStmt_Class_initWithSMToken_withSMToken_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_(SMStmt_Class *self, SMToken *opener, SMToken *name, id<JavaUtilList> superclasses, id<JavaUtilList> mixins, id<JavaUtilList> constants, id<JavaUtilList> innerClasses, id<JavaUtilList> methods, id<JavaUtilList> annotations);

FOUNDATION_EXPORT SMStmt_Class *new_SMStmt_Class_initWithSMToken_withSMToken_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_(SMToken *opener, SMToken *name, id<JavaUtilList> superclasses, id<JavaUtilList> mixins, id<JavaUtilList> constants, id<JavaUtilList> innerClasses, id<JavaUtilList> methods, id<JavaUtilList> annotations) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Class *create_SMStmt_Class_initWithSMToken_withSMToken_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_withJavaUtilList_(SMToken *opener, SMToken *name, id<JavaUtilList> superclasses, id<JavaUtilList> mixins, id<JavaUtilList> constants, id<JavaUtilList> innerClasses, id<JavaUtilList> methods, id<JavaUtilList> annotations);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Class)

#endif

#if !defined (SMStmt_Continue_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Continue))
#define SMStmt_Continue_

@class IOSObjectArray;
@class SMToken;
@protocol SMStmt_Visitor;

@interface SMStmt_Continue : SMStmt {
 @public
  SMToken *name_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)name;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Continue)

J2OBJC_FIELD_SETTER(SMStmt_Continue, name_, SMToken *)

FOUNDATION_EXPORT void SMStmt_Continue_initWithSMToken_(SMStmt_Continue *self, SMToken *name);

FOUNDATION_EXPORT SMStmt_Continue *new_SMStmt_Continue_initWithSMToken_(SMToken *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Continue *create_SMStmt_Continue_initWithSMToken_(SMToken *name);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Continue)

#endif

#if !defined (SMStmt_Expression_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Expression))
#define SMStmt_Expression_

@class IOSObjectArray;
@class SMExpr;
@protocol SMStmt_Visitor;

@interface SMStmt_Expression : SMStmt {
 @public
  SMExpr *expression_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)expression;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Expression)

J2OBJC_FIELD_SETTER(SMStmt_Expression, expression_, SMExpr *)

FOUNDATION_EXPORT void SMStmt_Expression_initWithSMExpr_(SMStmt_Expression *self, SMExpr *expression);

FOUNDATION_EXPORT SMStmt_Expression *new_SMStmt_Expression_initWithSMExpr_(SMExpr *expression) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Expression *create_SMStmt_Expression_initWithSMExpr_(SMExpr *expression);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Expression)

#endif

#if !defined (SMStmt_Function_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Function))
#define SMStmt_Function_

@class IOSObjectArray;
@class SMExpr_Block;
@class SMToken;
@protocol JavaUtilList;
@protocol SMStmt_Visitor;

@interface SMStmt_Function : SMStmt {
 @public
  SMToken *name_;
  SMExpr_Block *block_;
  id<JavaUtilList> annotations_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)name
                         withSMExpr_Block:(SMExpr_Block *)block
                         withJavaUtilList:(id<JavaUtilList>)annotations;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Function)

J2OBJC_FIELD_SETTER(SMStmt_Function, name_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Function, block_, SMExpr_Block *)
J2OBJC_FIELD_SETTER(SMStmt_Function, annotations_, id<JavaUtilList>)

FOUNDATION_EXPORT void SMStmt_Function_initWithSMToken_withSMExpr_Block_withJavaUtilList_(SMStmt_Function *self, SMToken *name, SMExpr_Block *block, id<JavaUtilList> annotations);

FOUNDATION_EXPORT SMStmt_Function *new_SMStmt_Function_initWithSMToken_withSMExpr_Block_withJavaUtilList_(SMToken *name, SMExpr_Block *block, id<JavaUtilList> annotations) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Function *create_SMStmt_Function_initWithSMToken_withSMExpr_Block_withJavaUtilList_(SMToken *name, SMExpr_Block *block, id<JavaUtilList> annotations);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Function)

#endif

#if !defined (SMStmt_Elsif_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Elsif))
#define SMStmt_Elsif_

@class IOSObjectArray;
@class SMExpr;
@class SMExpr_Block;
@protocol JavaUtilList;
@protocol SMStmt_Visitor;

@interface SMStmt_Elsif : SMStmt < SMStmt_BlockStmt > {
 @public
  SMExpr *condition_;
  SMExpr_Block *thenBranch_;
}

#pragma mark Public

- (id<JavaUtilList>)getChildren;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)condition
                        withSMExpr_Block:(SMExpr_Block *)thenBranch;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Elsif)

J2OBJC_FIELD_SETTER(SMStmt_Elsif, condition_, SMExpr *)
J2OBJC_FIELD_SETTER(SMStmt_Elsif, thenBranch_, SMExpr_Block *)

FOUNDATION_EXPORT void SMStmt_Elsif_initWithSMExpr_withSMExpr_Block_(SMStmt_Elsif *self, SMExpr *condition, SMExpr_Block *thenBranch);

FOUNDATION_EXPORT SMStmt_Elsif *new_SMStmt_Elsif_initWithSMExpr_withSMExpr_Block_(SMExpr *condition, SMExpr_Block *thenBranch) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Elsif *create_SMStmt_Elsif_initWithSMExpr_withSMExpr_Block_(SMExpr *condition, SMExpr_Block *thenBranch);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Elsif)

#endif

#if !defined (SMStmt_If_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_If))
#define SMStmt_If_

@class IOSObjectArray;
@class SMExpr_Block;
@class SMStmt_Elsif;
@protocol JavaUtilList;
@protocol SMStmt_Visitor;

@interface SMStmt_If : SMStmt < SMStmt_BlockStmt > {
 @public
  SMStmt_Elsif *ifstmt_;
  id<JavaUtilList> elsifs_;
  SMExpr_Block *elseBranch_;
}

#pragma mark Public

- (id<JavaUtilList>)getChildren;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMStmt_Elsif:(SMStmt_Elsif *)ifstmt
                              withJavaUtilList:(id<JavaUtilList>)elsifs
                              withSMExpr_Block:(SMExpr_Block *)elseBranch;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_If)

J2OBJC_FIELD_SETTER(SMStmt_If, ifstmt_, SMStmt_Elsif *)
J2OBJC_FIELD_SETTER(SMStmt_If, elsifs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(SMStmt_If, elseBranch_, SMExpr_Block *)

FOUNDATION_EXPORT void SMStmt_If_initWithSMStmt_Elsif_withJavaUtilList_withSMExpr_Block_(SMStmt_If *self, SMStmt_Elsif *ifstmt, id<JavaUtilList> elsifs, SMExpr_Block *elseBranch);

FOUNDATION_EXPORT SMStmt_If *new_SMStmt_If_initWithSMStmt_Elsif_withJavaUtilList_withSMExpr_Block_(SMStmt_Elsif *ifstmt, id<JavaUtilList> elsifs, SMExpr_Block *elseBranch) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_If *create_SMStmt_If_initWithSMStmt_Elsif_withJavaUtilList_withSMExpr_Block_(SMStmt_Elsif *ifstmt, id<JavaUtilList> elsifs, SMExpr_Block *elseBranch);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_If)

#endif

#if !defined (SMStmt_Print_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Print))
#define SMStmt_Print_

@class IOSObjectArray;
@class SMExpr;
@protocol SMStmt_Visitor;

@interface SMStmt_Print : SMStmt {
 @public
  SMExpr *expression_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)expression;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Print)

J2OBJC_FIELD_SETTER(SMStmt_Print, expression_, SMExpr *)

FOUNDATION_EXPORT void SMStmt_Print_initWithSMExpr_(SMStmt_Print *self, SMExpr *expression);

FOUNDATION_EXPORT SMStmt_Print *new_SMStmt_Print_initWithSMExpr_(SMExpr *expression) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Print *create_SMStmt_Print_initWithSMExpr_(SMExpr *expression);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Print)

#endif

#if !defined (SMStmt_Rescue_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Rescue))
#define SMStmt_Rescue_

@class IOSObjectArray;
@class SMExpr_Block;
@class SMToken;
@protocol SMStmt_Visitor;

@interface SMStmt_Rescue : SMStmt {
 @public
  SMToken *keyword_;
  SMExpr_Block *block_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)keyword
                         withSMExpr_Block:(SMExpr_Block *)block;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Rescue)

J2OBJC_FIELD_SETTER(SMStmt_Rescue, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Rescue, block_, SMExpr_Block *)

FOUNDATION_EXPORT void SMStmt_Rescue_initWithSMToken_withSMExpr_Block_(SMStmt_Rescue *self, SMToken *keyword, SMExpr_Block *block);

FOUNDATION_EXPORT SMStmt_Rescue *new_SMStmt_Rescue_initWithSMToken_withSMExpr_Block_(SMToken *keyword, SMExpr_Block *block) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Rescue *create_SMStmt_Rescue_initWithSMToken_withSMExpr_Block_(SMToken *keyword, SMExpr_Block *block);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Rescue)

#endif

#if !defined (SMStmt_Import_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Import))
#define SMStmt_Import_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMStmt_Visitor;

@interface SMStmt_Import : SMStmt {
 @public
  SMToken *keyword_;
  SMExpr *value_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)keyword
                               withSMExpr:(SMExpr *)value;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Import)

J2OBJC_FIELD_SETTER(SMStmt_Import, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Import, value_, SMExpr *)

FOUNDATION_EXPORT void SMStmt_Import_initWithSMToken_withSMExpr_(SMStmt_Import *self, SMToken *keyword, SMExpr *value);

FOUNDATION_EXPORT SMStmt_Import *new_SMStmt_Import_initWithSMToken_withSMExpr_(SMToken *keyword, SMExpr *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Import *create_SMStmt_Import_initWithSMToken_withSMExpr_(SMToken *keyword, SMExpr *value);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Import)

#endif

#if !defined (SMStmt_Return_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Return))
#define SMStmt_Return_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMStmt_Visitor;

@interface SMStmt_Return : SMStmt {
 @public
  SMToken *keyword_;
  SMExpr *value_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)keyword
                               withSMExpr:(SMExpr *)value;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Return)

J2OBJC_FIELD_SETTER(SMStmt_Return, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Return, value_, SMExpr *)

FOUNDATION_EXPORT void SMStmt_Return_initWithSMToken_withSMExpr_(SMStmt_Return *self, SMToken *keyword, SMExpr *value);

FOUNDATION_EXPORT SMStmt_Return *new_SMStmt_Return_initWithSMToken_withSMExpr_(SMToken *keyword, SMExpr *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Return *create_SMStmt_Return_initWithSMToken_withSMExpr_(SMToken *keyword, SMExpr *value);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Return)

#endif

#if !defined (SMStmt_While_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_While))
#define SMStmt_While_

@class IOSObjectArray;
@class SMExpr;
@class SMExpr_Block;
@protocol JavaUtilList;
@protocol SMStmt_Visitor;

@interface SMStmt_While : SMStmt < SMStmt_BlockStmt > {
 @public
  SMExpr *condition_;
  SMExpr_Block *body_;
}

#pragma mark Public

- (id<JavaUtilList>)getChildren;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr:(SMExpr *)condition
                        withSMExpr_Block:(SMExpr_Block *)body;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_While)

J2OBJC_FIELD_SETTER(SMStmt_While, condition_, SMExpr *)
J2OBJC_FIELD_SETTER(SMStmt_While, body_, SMExpr_Block *)

FOUNDATION_EXPORT void SMStmt_While_initWithSMExpr_withSMExpr_Block_(SMStmt_While *self, SMExpr *condition, SMExpr_Block *body);

FOUNDATION_EXPORT SMStmt_While *new_SMStmt_While_initWithSMExpr_withSMExpr_Block_(SMExpr *condition, SMExpr_Block *body) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_While *create_SMStmt_While_initWithSMExpr_withSMExpr_Block_(SMExpr *condition, SMExpr_Block *body);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_While)

#endif

#if !defined (SMStmt_For_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_For))
#define SMStmt_For_

@class IOSObjectArray;
@class SMExpr;
@class SMExpr_Block;
@class SMExpr_Variable;
@protocol JavaUtilList;
@protocol SMStmt_Visitor;

@interface SMStmt_For : SMStmt < SMStmt_BlockStmt > {
 @public
  SMExpr_Variable *var_;
  SMExpr *iterable_;
  SMExpr_Block *body_;
}

#pragma mark Public

- (id<JavaUtilList>)getChildren;

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMExpr_Variable:(SMExpr_Variable *)var
                                       withSMExpr:(SMExpr *)iterable
                                 withSMExpr_Block:(SMExpr_Block *)body;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_For)

J2OBJC_FIELD_SETTER(SMStmt_For, var_, SMExpr_Variable *)
J2OBJC_FIELD_SETTER(SMStmt_For, iterable_, SMExpr *)
J2OBJC_FIELD_SETTER(SMStmt_For, body_, SMExpr_Block *)

FOUNDATION_EXPORT void SMStmt_For_initWithSMExpr_Variable_withSMExpr_withSMExpr_Block_(SMStmt_For *self, SMExpr_Variable *var, SMExpr *iterable, SMExpr_Block *body);

FOUNDATION_EXPORT SMStmt_For *new_SMStmt_For_initWithSMExpr_Variable_withSMExpr_withSMExpr_Block_(SMExpr_Variable *var, SMExpr *iterable, SMExpr_Block *body) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_For *create_SMStmt_For_initWithSMExpr_Variable_withSMExpr_withSMExpr_Block_(SMExpr_Variable *var, SMExpr *iterable, SMExpr_Block *body);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_For)

#endif

#if !defined (SMStmt_Yield_) && (INCLUDE_ALL_NetGlobulusSimiStmt || defined(INCLUDE_SMStmt_Yield))
#define SMStmt_Yield_

@class IOSObjectArray;
@class SMExpr;
@class SMToken;
@protocol SMStmt_Visitor;

@interface SMStmt_Yield : SMStmt {
 @public
  SMToken *keyword_;
  SMExpr *value_;
}

#pragma mark Public

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMToken:(SMToken *)keyword
                               withSMExpr:(SMExpr *)value;

- (id)acceptWithSMStmt_Visitor:(id<SMStmt_Visitor>)visitor
             withNSObjectArray:(IOSObjectArray *)args;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMStmt_Yield)

J2OBJC_FIELD_SETTER(SMStmt_Yield, keyword_, SMToken *)
J2OBJC_FIELD_SETTER(SMStmt_Yield, value_, SMExpr *)

FOUNDATION_EXPORT void SMStmt_Yield_initWithSMToken_withSMExpr_(SMStmt_Yield *self, SMToken *keyword, SMExpr *value);

FOUNDATION_EXPORT SMStmt_Yield *new_SMStmt_Yield_initWithSMToken_withSMExpr_(SMToken *keyword, SMExpr *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMStmt_Yield *create_SMStmt_Yield_initWithSMToken_withSMExpr_(SMToken *keyword, SMExpr *value);

J2OBJC_TYPE_LITERAL_HEADER(SMStmt_Yield)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiStmt")
