//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Token.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiToken")
#ifdef RESTRICT_NetGlobulusSimiToken
#define INCLUDE_ALL_NetGlobulusSimiToken 0
#else
#define INCLUDE_ALL_NetGlobulusSimiToken 1
#endif
#undef RESTRICT_NetGlobulusSimiToken

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMToken_) && (INCLUDE_ALL_NetGlobulusSimiToken || defined(INCLUDE_SMToken))
#define SMToken_

@class SMSimiValue;
@class SMTokenType;

@interface SMToken : NSObject {
 @public
  SMTokenType *type_;
  NSString *lexeme_;
  SMSimiValue *literal_;
  jint line_;
  NSString *file_;
  jboolean hasBreakpoint_;
}

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithSMTokenType:(SMTokenType *)type
                                 withNSString:(NSString *)lexeme
                              withSMSimiValue:(SMSimiValue *)literal
                                      withInt:(jint)line
                                 withNSString:(NSString *)file;

+ (SMToken *)namedWithNSString:(NSString *)name;

+ (SMToken *)nativeCallWithNSString:(NSString *)name;

+ (SMToken *)self__;

+ (SMToken *)selfDef;

+ (SMToken *)superToken;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(SMToken)

J2OBJC_FIELD_SETTER(SMToken, type_, SMTokenType *)
J2OBJC_FIELD_SETTER(SMToken, lexeme_, NSString *)
J2OBJC_FIELD_SETTER(SMToken, literal_, SMSimiValue *)
J2OBJC_FIELD_SETTER(SMToken, file_, NSString *)

FOUNDATION_EXPORT void SMToken_initWithSMTokenType_withNSString_withSMSimiValue_withInt_withNSString_(SMToken *self, SMTokenType *type, NSString *lexeme, SMSimiValue *literal, jint line, NSString *file);

FOUNDATION_EXPORT SMToken *new_SMToken_initWithSMTokenType_withNSString_withSMSimiValue_withInt_withNSString_(SMTokenType *type, NSString *lexeme, SMSimiValue *literal, jint line, NSString *file) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMToken *create_SMToken_initWithSMTokenType_withNSString_withSMSimiValue_withInt_withNSString_(SMTokenType *type, NSString *lexeme, SMSimiValue *literal, jint line, NSString *file);

FOUNDATION_EXPORT SMToken *SMToken_self__(void);

FOUNDATION_EXPORT SMToken *SMToken_superToken(void);

FOUNDATION_EXPORT SMToken *SMToken_selfDef(void);

FOUNDATION_EXPORT SMToken *SMToken_nativeCallWithNSString_(NSString *name);

FOUNDATION_EXPORT SMToken *SMToken_namedWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(SMToken)

@compatibility_alias NetGlobulusSimiToken SMToken;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiToken")
