//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Simi.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiSimi")
#ifdef RESTRICT_NetGlobulusSimiSimi
#define INCLUDE_ALL_NetGlobulusSimiSimi 0
#else
#define INCLUDE_ALL_NetGlobulusSimiSimi 1
#endif
#undef RESTRICT_NetGlobulusSimiSimi

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMSimi_) && (INCLUDE_ALL_NetGlobulusSimiSimi || defined(INCLUDE_SMSimi))
#define SMSimi_

@class IOSObjectArray;

@interface SMSimi : NSObject

+ (jboolean)hadError;

+ (void)setHadError:(jboolean)value;

+ (jboolean)hadRuntimeError;

+ (void)setHadRuntimeError:(jboolean)value;

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_STATIC_INIT(SMSimi)

inline jboolean SMSimi_get_hadError(void);
inline jboolean SMSimi_set_hadError(jboolean value);
inline jboolean *SMSimi_getRef_hadError(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean SMSimi_hadError;
J2OBJC_STATIC_FIELD_PRIMITIVE(SMSimi, hadError, jboolean)

inline jboolean SMSimi_get_hadRuntimeError(void);
inline jboolean SMSimi_set_hadRuntimeError(jboolean value);
inline jboolean *SMSimi_getRef_hadRuntimeError(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean SMSimi_hadRuntimeError;
J2OBJC_STATIC_FIELD_PRIMITIVE(SMSimi, hadRuntimeError, jboolean)

FOUNDATION_EXPORT void SMSimi_init(SMSimi *self);

FOUNDATION_EXPORT SMSimi *new_SMSimi_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SMSimi *create_SMSimi_init(void);

FOUNDATION_EXPORT void SMSimi_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(SMSimi)

@compatibility_alias NetGlobulusSimiSimi SMSimi;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiSimi")
