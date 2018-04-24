//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/ActiveSimi.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetGlobulusSimiActiveSimi")
#ifdef RESTRICT_NetGlobulusSimiActiveSimi
#define INCLUDE_ALL_NetGlobulusSimiActiveSimi 0
#else
#define INCLUDE_ALL_NetGlobulusSimiActiveSimi 1
#endif
#undef RESTRICT_NetGlobulusSimiActiveSimi

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SMActiveSimi_) && (INCLUDE_ALL_NetGlobulusSimiActiveSimi || defined(INCLUDE_SMActiveSimi))
#define SMActiveSimi_

@class IOSObjectArray;
@class SMSimiClassImpl;
@protocol SMActiveSimi_Callback;
@protocol SMActiveSimi_ImportResolver;
@protocol SMSimiProperty;

@interface SMActiveSimi : NSObject

+ (jboolean)hadError;

+ (void)setHadError:(jboolean)value;

+ (jboolean)hadRuntimeError;

+ (void)setHadRuntimeError:(jboolean)value;

#pragma mark Public

+ (id<SMSimiProperty>)evalWithNSString:(NSString *)className_
                          withNSString:(NSString *)methodName
               withSMSimiPropertyArray:(IOSObjectArray *)params;

+ (void)evalAsyncWithSMActiveSimi_Callback:(id<SMActiveSimi_Callback>)callback
                              withNSString:(NSString *)className_
                              withNSString:(NSString *)methodName
                   withSMSimiPropertyArray:(IOSObjectArray *)params;

+ (void)load__WithNSStringArray:(IOSObjectArray *)files;

+ (void)setImportResolverWithSMActiveSimi_ImportResolver:(id<SMActiveSimi_ImportResolver>)ir;

#pragma mark Package-Private

+ (SMSimiClassImpl *)getObjectClass;

@end

J2OBJC_STATIC_INIT(SMActiveSimi)

inline jboolean SMActiveSimi_get_hadError(void);
inline jboolean SMActiveSimi_set_hadError(jboolean value);
inline jboolean *SMActiveSimi_getRef_hadError(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean SMActiveSimi_hadError;
J2OBJC_STATIC_FIELD_PRIMITIVE(SMActiveSimi, hadError, jboolean)

inline jboolean SMActiveSimi_get_hadRuntimeError(void);
inline jboolean SMActiveSimi_set_hadRuntimeError(jboolean value);
inline jboolean *SMActiveSimi_getRef_hadRuntimeError(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean SMActiveSimi_hadRuntimeError;
J2OBJC_STATIC_FIELD_PRIMITIVE(SMActiveSimi, hadRuntimeError, jboolean)

FOUNDATION_EXPORT void SMActiveSimi_load__WithNSStringArray_(IOSObjectArray *files);

FOUNDATION_EXPORT id<SMSimiProperty> SMActiveSimi_evalWithNSString_withNSString_withSMSimiPropertyArray_(NSString *className_, NSString *methodName, IOSObjectArray *params);

FOUNDATION_EXPORT void SMActiveSimi_evalAsyncWithSMActiveSimi_Callback_withNSString_withNSString_withSMSimiPropertyArray_(id<SMActiveSimi_Callback> callback, NSString *className_, NSString *methodName, IOSObjectArray *params);

FOUNDATION_EXPORT void SMActiveSimi_setImportResolverWithSMActiveSimi_ImportResolver_(id<SMActiveSimi_ImportResolver> ir);

FOUNDATION_EXPORT SMSimiClassImpl *SMActiveSimi_getObjectClass(void);

J2OBJC_TYPE_LITERAL_HEADER(SMActiveSimi)

@compatibility_alias NetGlobulusSimiActiveSimi SMActiveSimi;

#endif

#if !defined (SMActiveSimi_ImportResolver_) && (INCLUDE_ALL_NetGlobulusSimiActiveSimi || defined(INCLUDE_SMActiveSimi_ImportResolver))
#define SMActiveSimi_ImportResolver_

@protocol SMActiveSimi_ImportResolver < JavaObject >

- (NSString *)readFileWithNSString:(NSString *)fileName;

@end

J2OBJC_EMPTY_STATIC_INIT(SMActiveSimi_ImportResolver)

J2OBJC_TYPE_LITERAL_HEADER(SMActiveSimi_ImportResolver)

#endif

#if !defined (SMActiveSimi_Callback_) && (INCLUDE_ALL_NetGlobulusSimiActiveSimi || defined(INCLUDE_SMActiveSimi_Callback))
#define SMActiveSimi_Callback_

@protocol SMSimiProperty;

@protocol SMActiveSimi_Callback < JavaObject >

- (void)doneWithSMSimiProperty:(id<SMSimiProperty>)result;

@end

J2OBJC_EMPTY_STATIC_INIT(SMActiveSimi_Callback)

J2OBJC_TYPE_LITERAL_HEADER(SMActiveSimi_Callback)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiActiveSimi")
