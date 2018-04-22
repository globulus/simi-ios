//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/TokenType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiTokenType")
#ifdef RESTRICT_NetGlobulusSimiTokenType
#define INCLUDE_ALL_NetGlobulusSimiTokenType 0
#else
#define INCLUDE_ALL_NetGlobulusSimiTokenType 1
#endif
#undef RESTRICT_NetGlobulusSimiTokenType

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetGlobulusSimiTokenType_) && (INCLUDE_ALL_NetGlobulusSimiTokenType || defined(INCLUDE_NetGlobulusSimiTokenType))
#define NetGlobulusSimiTokenType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, NetGlobulusSimiTokenType_Enum) {
  NetGlobulusSimiTokenType_Enum_LEFT_PAREN = 0,
  NetGlobulusSimiTokenType_Enum_RIGHT_PAREN = 1,
  NetGlobulusSimiTokenType_Enum_LEFT_BRACKET = 2,
  NetGlobulusSimiTokenType_Enum_RIGHT_BRACKET = 3,
  NetGlobulusSimiTokenType_Enum_COMMA = 4,
  NetGlobulusSimiTokenType_Enum_DOT = 5,
  NetGlobulusSimiTokenType_Enum_COLON = 6,
  NetGlobulusSimiTokenType_Enum_NEWLINE = 7,
  NetGlobulusSimiTokenType_Enum_BANG = 8,
  NetGlobulusSimiTokenType_Enum_BANG_BANG = 9,
  NetGlobulusSimiTokenType_Enum_BANG_EQUAL = 10,
  NetGlobulusSimiTokenType_Enum_EQUAL = 11,
  NetGlobulusSimiTokenType_Enum_EQUAL_EQUAL = 12,
  NetGlobulusSimiTokenType_Enum_GREATER = 13,
  NetGlobulusSimiTokenType_Enum_GREATER_EQUAL = 14,
  NetGlobulusSimiTokenType_Enum_LESS = 15,
  NetGlobulusSimiTokenType_Enum_LESS_EQUAL = 16,
  NetGlobulusSimiTokenType_Enum_LESS_GREATER = 17,
  NetGlobulusSimiTokenType_Enum_PLUS = 18,
  NetGlobulusSimiTokenType_Enum_PLUS_EQUAL = 19,
  NetGlobulusSimiTokenType_Enum_MINUS = 20,
  NetGlobulusSimiTokenType_Enum_MINUS_EQUAL = 21,
  NetGlobulusSimiTokenType_Enum_STAR = 22,
  NetGlobulusSimiTokenType_Enum_STAR_STAR = 23,
  NetGlobulusSimiTokenType_Enum_STAR_EQUAL = 24,
  NetGlobulusSimiTokenType_Enum_SLASH = 25,
  NetGlobulusSimiTokenType_Enum_SLASH_SLASH = 26,
  NetGlobulusSimiTokenType_Enum_SLASH_EQUAL = 27,
  NetGlobulusSimiTokenType_Enum_MOD = 28,
  NetGlobulusSimiTokenType_Enum_MOD_MOD = 29,
  NetGlobulusSimiTokenType_Enum_MOD_EQUAL = 30,
  NetGlobulusSimiTokenType_Enum_DOLLAR_LEFT_BRACKET = 31,
  NetGlobulusSimiTokenType_Enum_QUESTION = 32,
  NetGlobulusSimiTokenType_Enum_QUESTION_QUESTION = 33,
  NetGlobulusSimiTokenType_Enum_IDENTIFIER = 34,
  NetGlobulusSimiTokenType_Enum_STRING = 35,
  NetGlobulusSimiTokenType_Enum_NUMBER = 36,
  NetGlobulusSimiTokenType_Enum_AND = 37,
  NetGlobulusSimiTokenType_Enum_BREAK = 38,
  NetGlobulusSimiTokenType_Enum_CLASS = 39,
  NetGlobulusSimiTokenType_Enum_CONTINUE = 40,
  NetGlobulusSimiTokenType_Enum_ELSE = 41,
  NetGlobulusSimiTokenType_Enum_FALSE = 42,
  NetGlobulusSimiTokenType_Enum_DEF = 43,
  NetGlobulusSimiTokenType_Enum_FOR = 44,
  NetGlobulusSimiTokenType_Enum_RESCUE = 45,
  NetGlobulusSimiTokenType_Enum_IF = 46,
  NetGlobulusSimiTokenType_Enum_NIL = 47,
  NetGlobulusSimiTokenType_Enum_OR = 48,
  NetGlobulusSimiTokenType_Enum_PRINT = 49,
  NetGlobulusSimiTokenType_Enum_RETURN = 50,
  NetGlobulusSimiTokenType_Enum_SUPER = 51,
  NetGlobulusSimiTokenType_Enum_SELF = 52,
  NetGlobulusSimiTokenType_Enum_TRUE = 53,
  NetGlobulusSimiTokenType_Enum_WHILE = 54,
  NetGlobulusSimiTokenType_Enum_PASS = 55,
  NetGlobulusSimiTokenType_Enum_IN = 56,
  NetGlobulusSimiTokenType_Enum_IS = 57,
  NetGlobulusSimiTokenType_Enum_NOT = 58,
  NetGlobulusSimiTokenType_Enum_ELSIF = 59,
  NetGlobulusSimiTokenType_Enum_END = 60,
  NetGlobulusSimiTokenType_Enum_ISNOT = 61,
  NetGlobulusSimiTokenType_Enum_NOTIN = 62,
  NetGlobulusSimiTokenType_Enum_NATIVE = 63,
  NetGlobulusSimiTokenType_Enum_IMPORT = 64,
  NetGlobulusSimiTokenType_Enum_YIELD = 65,
  NetGlobulusSimiTokenType_Enum_WHEN = 66,
  NetGlobulusSimiTokenType_Enum_GU = 67,
  NetGlobulusSimiTokenType_Enum_EOF = 68,
};

@interface NetGlobulusSimiTokenType : JavaLangEnum

#pragma mark Public

+ (NetGlobulusSimiTokenType *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

@end

J2OBJC_STATIC_INIT(NetGlobulusSimiTokenType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_values_[];

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_LEFT_PAREN(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, LEFT_PAREN)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_RIGHT_PAREN(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, RIGHT_PAREN)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_LEFT_BRACKET(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, LEFT_BRACKET)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_RIGHT_BRACKET(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, RIGHT_BRACKET)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_COMMA(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, COMMA)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_DOT(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, DOT)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_COLON(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, COLON)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_NEWLINE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, NEWLINE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_BANG(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, BANG)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_BANG_BANG(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, BANG_BANG)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_BANG_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, BANG_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_EQUAL_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, EQUAL_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_GREATER(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, GREATER)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_GREATER_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, GREATER_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_LESS(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, LESS)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_LESS_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, LESS_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_LESS_GREATER(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, LESS_GREATER)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_PLUS(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, PLUS)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_PLUS_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, PLUS_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_MINUS(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, MINUS)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_MINUS_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, MINUS_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_STAR(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, STAR)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_STAR_STAR(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, STAR_STAR)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_STAR_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, STAR_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_SLASH(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, SLASH)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_SLASH_SLASH(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, SLASH_SLASH)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_SLASH_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, SLASH_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_MOD(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, MOD)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_MOD_MOD(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, MOD_MOD)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_MOD_EQUAL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, MOD_EQUAL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_DOLLAR_LEFT_BRACKET(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, DOLLAR_LEFT_BRACKET)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_QUESTION(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, QUESTION)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_QUESTION_QUESTION(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, QUESTION_QUESTION)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_IDENTIFIER(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, IDENTIFIER)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_STRING(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, STRING)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_NUMBER(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, NUMBER)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_AND(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, AND)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_BREAK(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, BREAK)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_CLASS(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, CLASS)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_CONTINUE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, CONTINUE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_ELSE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, ELSE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_FALSE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, FALSE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_DEF(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, DEF)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_FOR(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, FOR)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_RESCUE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, RESCUE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_IF(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, IF)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_NIL(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, NIL)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_OR(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, OR)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_PRINT(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, PRINT)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_RETURN(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, RETURN)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_SUPER(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, SUPER)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_SELF(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, SELF)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_TRUE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, TRUE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_WHILE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, WHILE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_PASS(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, PASS)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_IN(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, IN)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_IS(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, IS)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_NOT(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, NOT)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_ELSIF(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, ELSIF)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_END(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, END)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_ISNOT(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, ISNOT)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_NOTIN(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, NOTIN)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_NATIVE(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, NATIVE)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_IMPORT(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, IMPORT)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_YIELD(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, YIELD)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_WHEN(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, WHEN)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_GU(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, GU)

inline NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_get_EOF(void);
J2OBJC_ENUM_CONSTANT(NetGlobulusSimiTokenType, EOF)

FOUNDATION_EXPORT IOSObjectArray *NetGlobulusSimiTokenType_values(void);

FOUNDATION_EXPORT NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiTokenType)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiTokenType")