//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/SimiJavaMethod.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"
#include "SimiJavaMethod.h"

@interface SMSimiJavaMethod : NSObject

@end

__attribute__((unused)) static IOSObjectArray *SMSimiJavaMethod__Annotations$0(void);

@implementation SMSimiJavaMethod

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { (void *)&SMSimiJavaMethod__Annotations$0 };
  static const J2ObjcClassInfo _SMSimiJavaMethod = { "SimiJavaMethod", "net.globulus.simi", ptrTable, NULL, NULL, 7, 0x2609, 0, 0, -1, -1, -1, -1, 0 };
  return &_SMSimiJavaMethod;
}

@end

IOSObjectArray *SMSimiJavaMethod__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, METHOD) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, SOURCE)) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMSimiJavaMethod)
