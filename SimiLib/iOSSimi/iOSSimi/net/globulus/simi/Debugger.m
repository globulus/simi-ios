//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/Debugger.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Scanner.h"
#include "java/util/Set.h"
#include "Codifiable.h"
#include "Debugger.h"
#include "Environment.h"
#include "Stmt.h"

@class SMDebugger_FrameStack;

@interface SMDebugger () {
 @public
  SMDebugger_FrameStack *lineStack_;
  SMDebugger_FrameStack *callStack_;
  JavaUtilScanner *scanner_;
  id<SMDebugger_Evaluator> evaluator_;
  SMEnvironment *inspectingEnvironment_;
  id<JavaUtilSet> ignoredBreakpoints_;
  SMStmt *currentBreakpoint_;
  SMDebugger_FrameStack *currentStack_;
}

- (void)printWithInt:(jint)frameIndex
         withBoolean:(jboolean)printLine;

- (void)printHelp;

- (void)scanInput;

@end

J2OBJC_FIELD_SETTER(SMDebugger, lineStack_, SMDebugger_FrameStack *)
J2OBJC_FIELD_SETTER(SMDebugger, callStack_, SMDebugger_FrameStack *)
J2OBJC_FIELD_SETTER(SMDebugger, scanner_, JavaUtilScanner *)
J2OBJC_FIELD_SETTER(SMDebugger, evaluator_, id<SMDebugger_Evaluator>)
J2OBJC_FIELD_SETTER(SMDebugger, inspectingEnvironment_, SMEnvironment *)
J2OBJC_FIELD_SETTER(SMDebugger, ignoredBreakpoints_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(SMDebugger, currentBreakpoint_, SMStmt *)
J2OBJC_FIELD_SETTER(SMDebugger, currentStack_, SMDebugger_FrameStack *)

__attribute__((unused)) static void SMDebugger_printWithInt_withBoolean_(SMDebugger *self, jint frameIndex, jboolean printLine);

__attribute__((unused)) static void SMDebugger_printHelp(SMDebugger *self);

__attribute__((unused)) static void SMDebugger_scanInput(SMDebugger *self);

@interface SMDebugger_FrameStack : NSObject {
 @public
  IOSObjectArray *stack_;
  jint index_;
}

- (instancetype __nonnull)init;

- (void)pushWithSMDebugger_Frame:(SMDebugger_Frame *)frame;

- (SMDebugger_Frame *)pop;

- (id<JavaUtilList>)toList;

@end

J2OBJC_EMPTY_STATIC_INIT(SMDebugger_FrameStack)

J2OBJC_FIELD_SETTER(SMDebugger_FrameStack, stack_, IOSObjectArray *)

inline jint SMDebugger_FrameStack_get_MAX_SIZE(void);
#define SMDebugger_FrameStack_MAX_SIZE 20
J2OBJC_STATIC_FIELD_CONSTANT(SMDebugger_FrameStack, MAX_SIZE, jint)

__attribute__((unused)) static void SMDebugger_FrameStack_init(SMDebugger_FrameStack *self);

__attribute__((unused)) static SMDebugger_FrameStack *new_SMDebugger_FrameStack_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static SMDebugger_FrameStack *create_SMDebugger_FrameStack_init(void);

J2OBJC_TYPE_LITERAL_HEADER(SMDebugger_FrameStack)

@interface SMDebugger_Evaluator : NSObject

@end

NSString *SMDebugger_BREAKPOINT_LEXEME = @"BP";

@implementation SMDebugger

+ (NSString *)BREAKPOINT_LEXEME {
  return SMDebugger_BREAKPOINT_LEXEME;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  SMDebugger_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setEvaluatorWithSMDebugger_Evaluator:(id<SMDebugger_Evaluator>)evaluator {
  self->evaluator_ = evaluator;
}

- (void)pushLineWithSMDebugger_Frame:(SMDebugger_Frame *)frame {
  [((SMDebugger_FrameStack *) nil_chk(lineStack_)) pushWithSMDebugger_Frame:frame];
}

- (void)pushCallWithSMDebugger_Frame:(SMDebugger_Frame *)frame {
  [((SMDebugger_FrameStack *) nil_chk(callStack_)) pushWithSMDebugger_Frame:frame];
}

- (void)popCall {
  (void) [((SMDebugger_FrameStack *) nil_chk(callStack_)) pop];
}

- (void)triggerBreakpointWithSMStmt:(SMStmt *)stmt {
  if ([((id<JavaUtilSet>) nil_chk(ignoredBreakpoints_)) containsWithId:stmt]) {
    return;
  }
  currentBreakpoint_ = stmt;
  currentStack_ = callStack_;
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"***** BREAKPOINT *****\n"];
  SMDebugger_printWithInt_withBoolean_(self, 0, true);
  SMDebugger_scanInput(self);
}

- (void)printWithInt:(jint)frameIndex
         withBoolean:(jboolean)printLine {
  SMDebugger_printWithInt_withBoolean_(self, frameIndex, printLine);
}

- (void)printHelp {
  SMDebugger_printHelp(self);
}

- (void)scanInput {
  SMDebugger_scanInput(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setEvaluatorWithSMDebugger_Evaluator:);
  methods[2].selector = @selector(pushLineWithSMDebugger_Frame:);
  methods[3].selector = @selector(pushCallWithSMDebugger_Frame:);
  methods[4].selector = @selector(popCall);
  methods[5].selector = @selector(triggerBreakpointWithSMStmt:);
  methods[6].selector = @selector(printWithInt:withBoolean:);
  methods[7].selector = @selector(printHelp);
  methods[8].selector = @selector(scanInput);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BREAKPOINT_LEXEME", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 9, -1, -1 },
    { "lineStack_", "LSMDebugger_FrameStack;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "callStack_", "LSMDebugger_FrameStack;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "scanner_", "LJavaUtilScanner;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "evaluator_", "LSMDebugger_Evaluator;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inspectingEnvironment_", "LSMEnvironment;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ignoredBreakpoints_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
    { "currentBreakpoint_", "LSMStmt;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentStack_", "LSMDebugger_FrameStack;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setEvaluator", "LSMDebugger_Evaluator;", "pushLine", "LSMDebugger_Frame;", "pushCall", "triggerBreakpoint", "LSMStmt;", "print", "IZ", &SMDebugger_BREAKPOINT_LEXEME, "Ljava/util/Set<LStmt;>;", "LSMDebugger_Frame;LSMDebugger_FrameStack;LSMDebugger_Evaluator;" };
  static const J2ObjcClassInfo _SMDebugger = { "Debugger", "net.globulus.simi", ptrTable, methods, fields, 7, 0x10, 9, 9, -1, 11, -1, -1, -1 };
  return &_SMDebugger;
}

@end

void SMDebugger_init(SMDebugger *self) {
  NSObject_init(self);
  self->lineStack_ = new_SMDebugger_FrameStack_init();
  self->callStack_ = new_SMDebugger_FrameStack_init();
  self->scanner_ = new_JavaUtilScanner_initWithJavaIoInputStream_(JreLoadStatic(JavaLangSystem, in));
  self->ignoredBreakpoints_ = new_JavaUtilHashSet_init();
}

SMDebugger *new_SMDebugger_init() {
  J2OBJC_NEW_IMPL(SMDebugger, init)
}

SMDebugger *create_SMDebugger_init() {
  J2OBJC_CREATE_IMPL(SMDebugger, init)
}

void SMDebugger_printWithInt_withBoolean_(SMDebugger *self, jint frameIndex, jboolean printLine) {
  id<JavaUtilList> frames = [((SMDebugger_FrameStack *) nil_chk(self->currentStack_)) toList];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"============================"];
  SMDebugger_Frame *focusFrame;
  if (printLine && self->currentStack_ != self->lineStack_) {
    focusFrame = [((id<JavaUtilList>) nil_chk([((SMDebugger_FrameStack *) nil_chk(self->lineStack_)) toList])) getWithInt:frameIndex];
  }
  else {
    focusFrame = [((id<JavaUtilList>) nil_chk(frames)) getWithInt:frameIndex];
  }
  self->inspectingEnvironment_ = ((SMDebugger_Frame *) nil_chk(focusFrame))->environment_;
  if (focusFrame->before_ != nil) {
    {
      IOSObjectArray *a__ = focusFrame->before_;
      id<SMCodifiable> const *b__ = a__->buffer_;
      id<SMCodifiable> const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        id<SMCodifiable> codifiable = *b__++;
        [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:[((id<SMCodifiable>) nil_chk(codifiable)) toCodeWithInt:0 withBoolean:true]];
      }
    }
  }
  [focusFrame printWithJavaLangInteger:nil];
  if (focusFrame->after_ != nil) {
    {
      IOSObjectArray *a__ = focusFrame->after_;
      id<SMCodifiable> const *b__ = a__->buffer_;
      id<SMCodifiable> const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        id<SMCodifiable> codifiable = *b__++;
        [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:[((id<SMCodifiable>) nil_chk(codifiable)) toCodeWithInt:0 withBoolean:true]];
      }
    }
  }
  [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:@"============================"];
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(frames)) size]; i++) {
    SMDebugger_Frame *frame = [frames getWithInt:i];
    [((SMDebugger_Frame *) nil_chk(frame)) printWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(i)];
  }
  [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:@"\n#### ENVIRONMENT ####\n"];
  [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:[((SMEnvironment *) nil_chk(focusFrame->environment_)) toStringWithoutValuesOrGlobal]];
  SMDebugger_printHelp(self);
}

void SMDebugger_printHelp(SMDebugger *self) {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"\nCommands:\nc: Print call stack\nl: Print line stack\ni [index]: Inspect environment at stack index\ne [expr]: Evaluates expression within current environment\nr: Remove current breakpoint for this debugger session\ng: Prints global environment\nanything else: continue with program execution\n"];
}

void SMDebugger_scanInput(SMDebugger *self) {
  NSString *input = [((JavaUtilScanner *) nil_chk(self->scanner_)) nextLine];
  if ([((NSString *) nil_chk(input)) java_isEmpty]) {
    return;
  }
  switch ([input charAtWithInt:0]) {
    case 'c':
    {
      self->currentStack_ = self->callStack_;
      SMDebugger_printWithInt_withBoolean_(self, 0, true);
    }
    break;
    case 'l':
    {
      self->currentStack_ = self->lineStack_;
      SMDebugger_printWithInt_withBoolean_(self, 0, true);
    }
    break;
    case 'i':
    {
      jint index = JavaLangInteger_parseIntWithNSString_([input java_substring:2]);
      SMDebugger_printWithInt_withBoolean_(self, index, false);
    }
    break;
    case 'e':
    {
      if (self->evaluator_ == nil) {
        @throw new_JavaLangIllegalStateException_initWithNSString_(@"Evaluator not set!");
      }
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:[self->evaluator_ evalWithNSString:[input java_substring:2] withSMEnvironment:self->inspectingEnvironment_]];
      SMDebugger_printHelp(self);
    }
    break;
    case 'r':
    {
      if (self->currentBreakpoint_ != nil) {
        [((id<JavaUtilSet>) nil_chk(self->ignoredBreakpoints_)) addWithId:self->currentBreakpoint_];
        self->currentBreakpoint_ = nil;
      }
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Breakpoint removed."];
      SMDebugger_printHelp(self);
    }
    break;
    case 'g':
    {
      if (self->evaluator_ == nil) {
        @throw new_JavaLangIllegalStateException_initWithNSString_(@"Evaluator not set!");
      }
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:[((SMEnvironment *) nil_chk([self->evaluator_ getGlobalEnvironment])) description]];
      SMDebugger_printHelp(self);
    }
    break;
    default:
    return;
  }
  SMDebugger_scanInput(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMDebugger)

@implementation SMDebugger_Frame

- (instancetype __nonnull)initWithSMEnvironment:(SMEnvironment *)environment
                               withSMCodifiable:(id<SMCodifiable>)line
                          withSMCodifiableArray:(IOSObjectArray *)before
                          withSMCodifiableArray:(IOSObjectArray *)after {
  SMDebugger_Frame_initWithSMEnvironment_withSMCodifiable_withSMCodifiableArray_withSMCodifiableArray_(self, environment, line, before, after);
  return self;
}

- (void)printWithJavaLangInteger:(JavaLangInteger *)index {
  if (index != nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printWithNSString:JreStrcat("C@$", '[', index, @"] ")];
  }
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printWithNSString:JreStrcat("C$$I$", '"', [((id<SMCodifiable>) nil_chk(line_)) getFileName], @"\" line ", [line_ getLineNumber], @": ")];
  [JreLoadStatic(JavaLangSystem, out) printlnWithNSString:[line_ toCodeWithInt:0 withBoolean:true]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithSMEnvironment:withSMCodifiable:withSMCodifiableArray:withSMCodifiableArray:);
  methods[1].selector = @selector(printWithJavaLangInteger:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "environment_", "LSMEnvironment;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "line_", "LSMCodifiable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "before_", "[LSMCodifiable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "after_", "[LSMCodifiable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LSMEnvironment;LSMCodifiable;[LSMCodifiable;[LSMCodifiable;", "print", "LJavaLangInteger;", "LSMDebugger;" };
  static const J2ObjcClassInfo _SMDebugger_Frame = { "Frame", "net.globulus.simi", ptrTable, methods, fields, 7, 0x8, 2, 4, 3, -1, -1, -1, -1 };
  return &_SMDebugger_Frame;
}

@end

void SMDebugger_Frame_initWithSMEnvironment_withSMCodifiable_withSMCodifiableArray_withSMCodifiableArray_(SMDebugger_Frame *self, SMEnvironment *environment, id<SMCodifiable> line, IOSObjectArray *before, IOSObjectArray *after) {
  NSObject_init(self);
  self->environment_ = environment;
  self->line_ = line;
  self->before_ = before;
  self->after_ = after;
}

SMDebugger_Frame *new_SMDebugger_Frame_initWithSMEnvironment_withSMCodifiable_withSMCodifiableArray_withSMCodifiableArray_(SMEnvironment *environment, id<SMCodifiable> line, IOSObjectArray *before, IOSObjectArray *after) {
  J2OBJC_NEW_IMPL(SMDebugger_Frame, initWithSMEnvironment_withSMCodifiable_withSMCodifiableArray_withSMCodifiableArray_, environment, line, before, after)
}

SMDebugger_Frame *create_SMDebugger_Frame_initWithSMEnvironment_withSMCodifiable_withSMCodifiableArray_withSMCodifiableArray_(SMEnvironment *environment, id<SMCodifiable> line, IOSObjectArray *before, IOSObjectArray *after) {
  J2OBJC_CREATE_IMPL(SMDebugger_Frame, initWithSMEnvironment_withSMCodifiable_withSMCodifiableArray_withSMCodifiableArray_, environment, line, before, after)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMDebugger_Frame)

@implementation SMDebugger_FrameStack

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  SMDebugger_FrameStack_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)pushWithSMDebugger_Frame:(SMDebugger_Frame *)frame {
  (void) IOSObjectArray_Set(nil_chk(stack_), index_, frame);
  index_++;
  if (index_ == SMDebugger_FrameStack_MAX_SIZE) {
    index_ = 0;
  }
}

- (SMDebugger_Frame *)pop {
  SMDebugger_Frame *frame = IOSObjectArray_Get(nil_chk(stack_), index_);
  (void) IOSObjectArray_Set(stack_, index_, nil);
  index_--;
  if (index_ < 0) {
    if (IOSObjectArray_Get(stack_, SMDebugger_FrameStack_MAX_SIZE - 1) != nil) {
      index_ = SMDebugger_FrameStack_MAX_SIZE - 1;
    }
    else {
      index_ = 0;
    }
  }
  return frame;
}

- (id<JavaUtilList>)toList {
  id<JavaUtilList> list = new_JavaUtilArrayList_initWithInt_(SMDebugger_FrameStack_MAX_SIZE);
  for (jint i = index_; i < SMDebugger_FrameStack_MAX_SIZE; i++) {
    if (IOSObjectArray_Get(nil_chk(stack_), i) != nil) {
      [list addWithId:IOSObjectArray_Get(stack_, i)];
    }
  }
  for (jint i = 0; i < index_; i++) {
    if (IOSObjectArray_Get(nil_chk(stack_), i) != nil) {
      [list addWithId:IOSObjectArray_Get(stack_, i)];
    }
  }
  JavaUtilCollections_reverseWithJavaUtilList_(list);
  return list;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "LSMDebugger_Frame;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x0, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(pushWithSMDebugger_Frame:);
  methods[2].selector = @selector(pop);
  methods[3].selector = @selector(toList);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_SIZE", "I", .constantValue.asInt = SMDebugger_FrameStack_MAX_SIZE, 0x1a, -1, -1, -1, -1 },
    { "stack_", "[LSMDebugger_Frame;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "index_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "push", "LSMDebugger_Frame;", "()Ljava/util/List<LDebugger$Frame;>;", "LSMDebugger;" };
  static const J2ObjcClassInfo _SMDebugger_FrameStack = { "FrameStack", "net.globulus.simi", ptrTable, methods, fields, 7, 0xa, 4, 3, 3, -1, -1, -1, -1 };
  return &_SMDebugger_FrameStack;
}

@end

void SMDebugger_FrameStack_init(SMDebugger_FrameStack *self) {
  NSObject_init(self);
  self->stack_ = [IOSObjectArray newArrayWithLength:SMDebugger_FrameStack_MAX_SIZE type:SMDebugger_Frame_class_()];
  self->index_ = 0;
}

SMDebugger_FrameStack *new_SMDebugger_FrameStack_init() {
  J2OBJC_NEW_IMPL(SMDebugger_FrameStack, init)
}

SMDebugger_FrameStack *create_SMDebugger_FrameStack_init() {
  J2OBJC_CREATE_IMPL(SMDebugger_FrameStack, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SMDebugger_FrameStack)

@implementation SMDebugger_Evaluator

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LSMEnvironment;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(evalWithNSString:withSMEnvironment:);
  methods[1].selector = @selector(getGlobalEnvironment);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "eval", "LNSString;LSMEnvironment;", "LSMDebugger;" };
  static const J2ObjcClassInfo _SMDebugger_Evaluator = { "Evaluator", "net.globulus.simi", ptrTable, methods, NULL, 7, 0x608, 2, 0, 2, -1, -1, -1, -1 };
  return &_SMDebugger_Evaluator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(SMDebugger_Evaluator)
