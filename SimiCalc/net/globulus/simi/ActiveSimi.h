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

#if !defined (NetGlobulusSimiActiveSimi_) && (INCLUDE_ALL_NetGlobulusSimiActiveSimi || defined(INCLUDE_NetGlobulusSimiActiveSimi))
#define NetGlobulusSimiActiveSimi_

@class IOSObjectArray;
@class NetGlobulusSimiSimiClassImpl;
@protocol NetGlobulusSimiActiveSimi_Callback;
@protocol NetGlobulusSimiActiveSimi_ImportResolver;
@protocol NetGlobulusSimiSimiProperty;

@interface NetGlobulusSimiActiveSimi : NSObject

#pragma mark Public

+ (id<NetGlobulusSimiSimiProperty>)evalWithNSString:(NSString *)className_
                                       withNSString:(NSString *)methodName
               withNetGlobulusSimiSimiPropertyArray:(IOSObjectArray *)params;

+ (void)evalAsyncWithNetGlobulusSimiActiveSimi_Callback:(id<NetGlobulusSimiActiveSimi_Callback>)callback
                                           withNSString:(NSString *)className_
                                           withNSString:(NSString *)methodName
                   withNetGlobulusSimiSimiPropertyArray:(IOSObjectArray *)params;

+ (void)load__WithNSStringArray:(IOSObjectArray *)files;

+ (void)setImportResolverWithNetGlobulusSimiActiveSimi_ImportResolver:(id<NetGlobulusSimiActiveSimi_ImportResolver>)ir;

#pragma mark Package-Private

+ (NetGlobulusSimiSimiClassImpl *)getObjectClass;

@end

J2OBJC_STATIC_INIT(NetGlobulusSimiActiveSimi)

inline jboolean NetGlobulusSimiActiveSimi_get_hadError(void);
inline jboolean NetGlobulusSimiActiveSimi_set_hadError(jboolean value);
inline jboolean *NetGlobulusSimiActiveSimi_getRef_hadError(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean NetGlobulusSimiActiveSimi_hadError;
J2OBJC_STATIC_FIELD_PRIMITIVE(NetGlobulusSimiActiveSimi, hadError, jboolean)

inline jboolean NetGlobulusSimiActiveSimi_get_hadRuntimeError(void);
inline jboolean NetGlobulusSimiActiveSimi_set_hadRuntimeError(jboolean value);
inline jboolean *NetGlobulusSimiActiveSimi_getRef_hadRuntimeError(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean NetGlobulusSimiActiveSimi_hadRuntimeError;
J2OBJC_STATIC_FIELD_PRIMITIVE(NetGlobulusSimiActiveSimi, hadRuntimeError, jboolean)

FOUNDATION_EXPORT void NetGlobulusSimiActiveSimi_load__WithNSStringArray_(IOSObjectArray *files);

FOUNDATION_EXPORT id<NetGlobulusSimiSimiProperty> NetGlobulusSimiActiveSimi_evalWithNSString_withNSString_withNetGlobulusSimiSimiPropertyArray_(NSString *className_, NSString *methodName, IOSObjectArray *params);

FOUNDATION_EXPORT void NetGlobulusSimiActiveSimi_evalAsyncWithNetGlobulusSimiActiveSimi_Callback_withNSString_withNSString_withNetGlobulusSimiSimiPropertyArray_(id<NetGlobulusSimiActiveSimi_Callback> callback, NSString *className_, NSString *methodName, IOSObjectArray *params);

FOUNDATION_EXPORT void NetGlobulusSimiActiveSimi_setImportResolverWithNetGlobulusSimiActiveSimi_ImportResolver_(id<NetGlobulusSimiActiveSimi_ImportResolver> ir);

FOUNDATION_EXPORT NetGlobulusSimiSimiClassImpl *NetGlobulusSimiActiveSimi_getObjectClass(void);

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiActiveSimi)

#endif

#if !defined (NetGlobulusSimiActiveSimi_ImportResolver_) && (INCLUDE_ALL_NetGlobulusSimiActiveSimi || defined(INCLUDE_NetGlobulusSimiActiveSimi_ImportResolver))
#define NetGlobulusSimiActiveSimi_ImportResolver_

@protocol NetGlobulusSimiActiveSimi_ImportResolver < JavaObject >

- (NSString *)readFileWithNSString:(NSString *)fileName;

@end

J2OBJC_EMPTY_STATIC_INIT(NetGlobulusSimiActiveSimi_ImportResolver)

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiActiveSimi_ImportResolver)

#endif

#if !defined (NetGlobulusSimiActiveSimi_Callback_) && (INCLUDE_ALL_NetGlobulusSimiActiveSimi || defined(INCLUDE_NetGlobulusSimiActiveSimi_Callback))
#define NetGlobulusSimiActiveSimi_Callback_

@protocol NetGlobulusSimiSimiProperty;

@protocol NetGlobulusSimiActiveSimi_Callback < JavaObject >

- (void)doneWithNetGlobulusSimiSimiProperty:(id<NetGlobulusSimiSimiProperty>)result;

@end

J2OBJC_EMPTY_STATIC_INIT(NetGlobulusSimiActiveSimi_Callback)

J2OBJC_TYPE_LITERAL_HEADER(NetGlobulusSimiActiveSimi_Callback)

#endif

#pragma pop_macro("INCLUDE_ALL_NetGlobulusSimiActiveSimi")