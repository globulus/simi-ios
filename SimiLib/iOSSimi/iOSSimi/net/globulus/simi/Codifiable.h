//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Codifiable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiCodifiable")
#ifdef RESTRICT_NetGlobulusSimiCodifiable
#define INCLUDE_ALL_NetGlobulusSimiCodifiable 0
#else
#define INCLUDE_ALL_NetGlobulusSimiCodifiable 1
#endif
#undef RESTRICT_NetGlobulusSimiCodifiable

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMCodifiable_) && (INCLUDE_ALL_NetGlobulusSimiCodifiable || defined(INCLUDE_SMCodifiable))
#define SMCodifiable_

@protocol SMCodifiable < JavaObject >

- (NSString *)toCodeWithInt:(jint)indentationLevel
                withBoolean:(jboolean)ignoreFirst;

- (jint)getLineNumber;

- (NSString *)getFileName;

- (jboolean)hasBreakPoint;

@end

@interface SMCodifiable : NSObject

+ (NSString *)getIndentationWithInt:(jint)level;

@end

J2OBJC_EMPTY_STATIC_INIT(SMCodifiable)

FOUNDATION_EXPORT NSString *SMCodifiable_getIndentationWithInt_(jint level);

J2OBJC_TYPE_LITERAL_HEADER(SMCodifiable)

#define NetGlobulusSimiCodifiable SMCodifiable

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiCodifiable")
