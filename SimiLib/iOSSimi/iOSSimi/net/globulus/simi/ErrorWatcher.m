//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/ErrorWatcher.java
//

#include "J2ObjC_source.h"
#include "ErrorWatcher.h"

@interface SMErrorWatcher : NSObject

@end

@implementation SMErrorWatcher

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(reportWithNSString:withInt:withNSString:withNSString:);
  methods[1].selector = @selector(runtimeErrorWithSMRuntimeError:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "report", "LNSString;ILNSString;LNSString;", "runtimeError", "LSMRuntimeError;" };
  static const J2ObjcClassInfo _SMErrorWatcher = { "ErrorWatcher", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x608, 2, 0, -1, -1, -1, -1, -1 };
  return &_SMErrorWatcher;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMErrorWatcher)
