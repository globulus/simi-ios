//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/TokenType.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "TokenType.h"

__attribute__((unused)) static void NetGlobulusSimiTokenType_initWithNSString_withInt_(NetGlobulusSimiTokenType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static NetGlobulusSimiTokenType *new_NetGlobulusSimiTokenType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(NetGlobulusSimiTokenType)

NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_values_[69];

@implementation NetGlobulusSimiTokenType

+ (IOSObjectArray *)values {
  return NetGlobulusSimiTokenType_values();
}

+ (NetGlobulusSimiTokenType *)valueOfWithNSString:(NSString *)name {
  return NetGlobulusSimiTokenType_valueOfWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LNetGlobulusSimiTokenType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetGlobulusSimiTokenType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LEFT_PAREN", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "RIGHT_PAREN", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "LEFT_BRACKET", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "RIGHT_BRACKET", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "COMMA", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "DOT", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "COLON", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "NEWLINE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "BANG", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "BANG_BANG", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
    { "BANG_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, -1 },
    { "EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 13, -1, -1 },
    { "EQUAL_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 14, -1, -1 },
    { "GREATER", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 15, -1, -1 },
    { "GREATER_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 16, -1, -1 },
    { "LESS", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 17, -1, -1 },
    { "LESS_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 18, -1, -1 },
    { "LESS_GREATER", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 19, -1, -1 },
    { "PLUS", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 20, -1, -1 },
    { "PLUS_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 21, -1, -1 },
    { "MINUS", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 22, -1, -1 },
    { "MINUS_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 23, -1, -1 },
    { "STAR", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 24, -1, -1 },
    { "STAR_STAR", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 25, -1, -1 },
    { "STAR_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 26, -1, -1 },
    { "SLASH", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 27, -1, -1 },
    { "SLASH_SLASH", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 28, -1, -1 },
    { "SLASH_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 29, -1, -1 },
    { "MOD", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 30, -1, -1 },
    { "MOD_MOD", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 31, -1, -1 },
    { "MOD_EQUAL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 32, -1, -1 },
    { "DOLLAR_LEFT_BRACKET", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 33, -1, -1 },
    { "QUESTION", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 34, -1, -1 },
    { "QUESTION_QUESTION", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 35, -1, -1 },
    { "IDENTIFIER", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 36, -1, -1 },
    { "STRING", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 37, -1, -1 },
    { "NUMBER", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 38, -1, -1 },
    { "AND", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 39, -1, -1 },
    { "BREAK", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 40, -1, -1 },
    { "CLASS", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 41, -1, -1 },
    { "CONTINUE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 42, -1, -1 },
    { "ELSE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 43, -1, -1 },
    { "FALSE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 44, -1, -1 },
    { "DEF", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 45, -1, -1 },
    { "FOR", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 46, -1, -1 },
    { "RESCUE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 47, -1, -1 },
    { "IF", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 48, -1, -1 },
    { "NIL", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 49, -1, -1 },
    { "OR", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 50, -1, -1 },
    { "PRINT", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 51, -1, -1 },
    { "RETURN", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 52, -1, -1 },
    { "SUPER", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 53, -1, -1 },
    { "SELF", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 54, -1, -1 },
    { "TRUE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 55, -1, -1 },
    { "WHILE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 56, -1, -1 },
    { "PASS", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 57, -1, -1 },
    { "IN", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 58, -1, -1 },
    { "IS", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 59, -1, -1 },
    { "NOT", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 60, -1, -1 },
    { "ELSIF", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 61, -1, -1 },
    { "END", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 62, -1, -1 },
    { "ISNOT", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 63, -1, -1 },
    { "NOTIN", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 64, -1, -1 },
    { "NATIVE", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 65, -1, -1 },
    { "IMPORT", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 66, -1, -1 },
    { "YIELD", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 67, -1, -1 },
    { "WHEN", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 68, -1, -1 },
    { "GU", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 69, -1, -1 },
    { "EOF", "LNetGlobulusSimiTokenType;", .constantValue.asLong = 0, 0x4019, -1, 70, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(NetGlobulusSimiTokenType, LEFT_PAREN), &JreEnum(NetGlobulusSimiTokenType, RIGHT_PAREN), &JreEnum(NetGlobulusSimiTokenType, LEFT_BRACKET), &JreEnum(NetGlobulusSimiTokenType, RIGHT_BRACKET), &JreEnum(NetGlobulusSimiTokenType, COMMA), &JreEnum(NetGlobulusSimiTokenType, DOT), &JreEnum(NetGlobulusSimiTokenType, COLON), &JreEnum(NetGlobulusSimiTokenType, NEWLINE), &JreEnum(NetGlobulusSimiTokenType, BANG), &JreEnum(NetGlobulusSimiTokenType, BANG_BANG), &JreEnum(NetGlobulusSimiTokenType, BANG_EQUAL), &JreEnum(NetGlobulusSimiTokenType, EQUAL), &JreEnum(NetGlobulusSimiTokenType, EQUAL_EQUAL), &JreEnum(NetGlobulusSimiTokenType, GREATER), &JreEnum(NetGlobulusSimiTokenType, GREATER_EQUAL), &JreEnum(NetGlobulusSimiTokenType, LESS), &JreEnum(NetGlobulusSimiTokenType, LESS_EQUAL), &JreEnum(NetGlobulusSimiTokenType, LESS_GREATER), &JreEnum(NetGlobulusSimiTokenType, PLUS), &JreEnum(NetGlobulusSimiTokenType, PLUS_EQUAL), &JreEnum(NetGlobulusSimiTokenType, MINUS), &JreEnum(NetGlobulusSimiTokenType, MINUS_EQUAL), &JreEnum(NetGlobulusSimiTokenType, STAR), &JreEnum(NetGlobulusSimiTokenType, STAR_STAR), &JreEnum(NetGlobulusSimiTokenType, STAR_EQUAL), &JreEnum(NetGlobulusSimiTokenType, SLASH), &JreEnum(NetGlobulusSimiTokenType, SLASH_SLASH), &JreEnum(NetGlobulusSimiTokenType, SLASH_EQUAL), &JreEnum(NetGlobulusSimiTokenType, MOD), &JreEnum(NetGlobulusSimiTokenType, MOD_MOD), &JreEnum(NetGlobulusSimiTokenType, MOD_EQUAL), &JreEnum(NetGlobulusSimiTokenType, DOLLAR_LEFT_BRACKET), &JreEnum(NetGlobulusSimiTokenType, QUESTION), &JreEnum(NetGlobulusSimiTokenType, QUESTION_QUESTION), &JreEnum(NetGlobulusSimiTokenType, IDENTIFIER), &JreEnum(NetGlobulusSimiTokenType, STRING), &JreEnum(NetGlobulusSimiTokenType, NUMBER), &JreEnum(NetGlobulusSimiTokenType, AND), &JreEnum(NetGlobulusSimiTokenType, BREAK), &JreEnum(NetGlobulusSimiTokenType, CLASS), &JreEnum(NetGlobulusSimiTokenType, CONTINUE), &JreEnum(NetGlobulusSimiTokenType, ELSE), &JreEnum(NetGlobulusSimiTokenType, FALSE), &JreEnum(NetGlobulusSimiTokenType, DEF), &JreEnum(NetGlobulusSimiTokenType, FOR), &JreEnum(NetGlobulusSimiTokenType, RESCUE), &JreEnum(NetGlobulusSimiTokenType, IF), &JreEnum(NetGlobulusSimiTokenType, NIL), &JreEnum(NetGlobulusSimiTokenType, OR), &JreEnum(NetGlobulusSimiTokenType, PRINT), &JreEnum(NetGlobulusSimiTokenType, RETURN), &JreEnum(NetGlobulusSimiTokenType, SUPER), &JreEnum(NetGlobulusSimiTokenType, SELF), &JreEnum(NetGlobulusSimiTokenType, TRUE), &JreEnum(NetGlobulusSimiTokenType, WHILE), &JreEnum(NetGlobulusSimiTokenType, PASS), &JreEnum(NetGlobulusSimiTokenType, IN), &JreEnum(NetGlobulusSimiTokenType, IS), &JreEnum(NetGlobulusSimiTokenType, NOT), &JreEnum(NetGlobulusSimiTokenType, ELSIF), &JreEnum(NetGlobulusSimiTokenType, END), &JreEnum(NetGlobulusSimiTokenType, ISNOT), &JreEnum(NetGlobulusSimiTokenType, NOTIN), &JreEnum(NetGlobulusSimiTokenType, NATIVE), &JreEnum(NetGlobulusSimiTokenType, IMPORT), &JreEnum(NetGlobulusSimiTokenType, YIELD), &JreEnum(NetGlobulusSimiTokenType, WHEN), &JreEnum(NetGlobulusSimiTokenType, GU), &JreEnum(NetGlobulusSimiTokenType, EOF), "Ljava/lang/Enum<LTokenType;>;" };
  static const J2ObjcClassInfo _NetGlobulusSimiTokenType = { "TokenType", "net.globulus.simi", ptrTable, methods, fields, 7, 0x4010, 2, 69, -1, -1, -1, 71, -1 };
  return &_NetGlobulusSimiTokenType;
}

+ (void)initialize {
  if (self == [NetGlobulusSimiTokenType class]) {
    JreEnum(NetGlobulusSimiTokenType, LEFT_PAREN) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 0), 0);
    JreEnum(NetGlobulusSimiTokenType, RIGHT_PAREN) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 1), 1);
    JreEnum(NetGlobulusSimiTokenType, LEFT_BRACKET) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 2), 2);
    JreEnum(NetGlobulusSimiTokenType, RIGHT_BRACKET) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 3), 3);
    JreEnum(NetGlobulusSimiTokenType, COMMA) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 4), 4);
    JreEnum(NetGlobulusSimiTokenType, DOT) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 5), 5);
    JreEnum(NetGlobulusSimiTokenType, COLON) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 6), 6);
    JreEnum(NetGlobulusSimiTokenType, NEWLINE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 7), 7);
    JreEnum(NetGlobulusSimiTokenType, BANG) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 8), 8);
    JreEnum(NetGlobulusSimiTokenType, BANG_BANG) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 9), 9);
    JreEnum(NetGlobulusSimiTokenType, BANG_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 10), 10);
    JreEnum(NetGlobulusSimiTokenType, EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 11), 11);
    JreEnum(NetGlobulusSimiTokenType, EQUAL_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 12), 12);
    JreEnum(NetGlobulusSimiTokenType, GREATER) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 13), 13);
    JreEnum(NetGlobulusSimiTokenType, GREATER_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 14), 14);
    JreEnum(NetGlobulusSimiTokenType, LESS) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 15), 15);
    JreEnum(NetGlobulusSimiTokenType, LESS_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 16), 16);
    JreEnum(NetGlobulusSimiTokenType, LESS_GREATER) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 17), 17);
    JreEnum(NetGlobulusSimiTokenType, PLUS) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 18), 18);
    JreEnum(NetGlobulusSimiTokenType, PLUS_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 19), 19);
    JreEnum(NetGlobulusSimiTokenType, MINUS) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 20), 20);
    JreEnum(NetGlobulusSimiTokenType, MINUS_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 21), 21);
    JreEnum(NetGlobulusSimiTokenType, STAR) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 22), 22);
    JreEnum(NetGlobulusSimiTokenType, STAR_STAR) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 23), 23);
    JreEnum(NetGlobulusSimiTokenType, STAR_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 24), 24);
    JreEnum(NetGlobulusSimiTokenType, SLASH) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 25), 25);
    JreEnum(NetGlobulusSimiTokenType, SLASH_SLASH) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 26), 26);
    JreEnum(NetGlobulusSimiTokenType, SLASH_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 27), 27);
    JreEnum(NetGlobulusSimiTokenType, MOD) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 28), 28);
    JreEnum(NetGlobulusSimiTokenType, MOD_MOD) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 29), 29);
    JreEnum(NetGlobulusSimiTokenType, MOD_EQUAL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 30), 30);
    JreEnum(NetGlobulusSimiTokenType, DOLLAR_LEFT_BRACKET) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 31), 31);
    JreEnum(NetGlobulusSimiTokenType, QUESTION) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 32), 32);
    JreEnum(NetGlobulusSimiTokenType, QUESTION_QUESTION) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 33), 33);
    JreEnum(NetGlobulusSimiTokenType, IDENTIFIER) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 34), 34);
    JreEnum(NetGlobulusSimiTokenType, STRING) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 35), 35);
    JreEnum(NetGlobulusSimiTokenType, NUMBER) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 36), 36);
    JreEnum(NetGlobulusSimiTokenType, AND) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 37), 37);
    JreEnum(NetGlobulusSimiTokenType, BREAK) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 38), 38);
    JreEnum(NetGlobulusSimiTokenType, CLASS) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 39), 39);
    JreEnum(NetGlobulusSimiTokenType, CONTINUE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 40), 40);
    JreEnum(NetGlobulusSimiTokenType, ELSE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 41), 41);
    JreEnum(NetGlobulusSimiTokenType, FALSE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 42), 42);
    JreEnum(NetGlobulusSimiTokenType, DEF) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 43), 43);
    JreEnum(NetGlobulusSimiTokenType, FOR) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 44), 44);
    JreEnum(NetGlobulusSimiTokenType, RESCUE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 45), 45);
    JreEnum(NetGlobulusSimiTokenType, IF) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 46), 46);
    JreEnum(NetGlobulusSimiTokenType, NIL) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 47), 47);
    JreEnum(NetGlobulusSimiTokenType, OR) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 48), 48);
    JreEnum(NetGlobulusSimiTokenType, PRINT) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 49), 49);
    JreEnum(NetGlobulusSimiTokenType, RETURN) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 50), 50);
    JreEnum(NetGlobulusSimiTokenType, SUPER) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 51), 51);
    JreEnum(NetGlobulusSimiTokenType, SELF) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 52), 52);
    JreEnum(NetGlobulusSimiTokenType, TRUE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 53), 53);
    JreEnum(NetGlobulusSimiTokenType, WHILE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 54), 54);
    JreEnum(NetGlobulusSimiTokenType, PASS) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 55), 55);
    JreEnum(NetGlobulusSimiTokenType, IN) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 56), 56);
    JreEnum(NetGlobulusSimiTokenType, IS) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 57), 57);
    JreEnum(NetGlobulusSimiTokenType, NOT) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 58), 58);
    JreEnum(NetGlobulusSimiTokenType, ELSIF) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 59), 59);
    JreEnum(NetGlobulusSimiTokenType, END) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 60), 60);
    JreEnum(NetGlobulusSimiTokenType, ISNOT) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 61), 61);
    JreEnum(NetGlobulusSimiTokenType, NOTIN) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 62), 62);
    JreEnum(NetGlobulusSimiTokenType, NATIVE) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 63), 63);
    JreEnum(NetGlobulusSimiTokenType, IMPORT) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 64), 64);
    JreEnum(NetGlobulusSimiTokenType, YIELD) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 65), 65);
    JreEnum(NetGlobulusSimiTokenType, WHEN) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 66), 66);
    JreEnum(NetGlobulusSimiTokenType, GU) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 67), 67);
    JreEnum(NetGlobulusSimiTokenType, EOF) = new_NetGlobulusSimiTokenType_initWithNSString_withInt_(JreEnumConstantName(NetGlobulusSimiTokenType_class_(), 68), 68);
    J2OBJC_SET_INITIALIZED(NetGlobulusSimiTokenType)
  }
}

@end

void NetGlobulusSimiTokenType_initWithNSString_withInt_(NetGlobulusSimiTokenType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

NetGlobulusSimiTokenType *new_NetGlobulusSimiTokenType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(NetGlobulusSimiTokenType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *NetGlobulusSimiTokenType_values() {
  NetGlobulusSimiTokenType_initialize();
  return [IOSObjectArray arrayWithObjects:NetGlobulusSimiTokenType_values_ count:69 type:NetGlobulusSimiTokenType_class_()];
}

NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_valueOfWithNSString_(NSString *name) {
  NetGlobulusSimiTokenType_initialize();
  for (int i = 0; i < 69; i++) {
    NetGlobulusSimiTokenType *e = NetGlobulusSimiTokenType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

NetGlobulusSimiTokenType *NetGlobulusSimiTokenType_fromOrdinal(NSUInteger ordinal) {
  NetGlobulusSimiTokenType_initialize();
  if (ordinal >= 69) {
    return nil;
  }
  return NetGlobulusSimiTokenType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetGlobulusSimiTokenType)