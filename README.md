# Šimi for iOS

Šimi is an awesome programming language! Check out its [main project repo here](https://github.com/globulus/simi)!

This repo contains a sample project showcasing how Šimi code can be embedded and used in an iOS app.

The Šimi interpreter was converted to Objective-C using [J2ObjC tool](https://developers.google.com/j2objc/). This puts some limitations on its usage, such as **preventing the usage of external Java files inside Šimi code**.

### How-to

1. Add Obj-C Šimi fiels to your project.
2. Add the **Šimi stdlib folder** to your project and add it to target.
3. Add any additional **Šimi code files** to your project and add them to target. Subfolders are NOT supported.
5. Mark your UIAppDelegate class to implement the *SMActiveSimi_ImportResolver* protocol, and then load your Šimi files. Loading sets up the interpreter and interprets the listed files, retaining the interpreter instance for future use.
```objc
...
@interface AppDelegate : UIResponder <UIApplicationDelegate, SMActiveSimi_ImportResolver>
...

...
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [SMActiveSimi setImportResolverWithSMActiveSimi_ImportResolver:self];

    // You may use any number of comma-separated files.
    // Stdlib.simi is loaded automatically.
    // This method MUST be invoked before any calls to eval() or evalAsync().
    [SMActiveSimi load__WithNSStringArray:[IOSObjectArray arrayWithNSArray:@[@"Calc.simi"] type:[IOSClass classForIosName:@"NSString"]]];
    return YES;
}

// We set the ImportResolver to just read the content of a Bundle file.
// This is generally the way you want to set up the import resolver for iOS.
- (NSString *)readFileWithNSString:(NSString *)fileName {
    NSString *lastPart = [[fileName componentsSeparatedByString:@"/"] lastObject];
    NSArray *comps = [lastPart componentsSeparatedByString:@"."];
    NSString *path = [[NSBundle mainBundle] pathForResource:comps[0] ofType:comps[1]];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    return content;
}
...
```
6. Use *SMActiveSimi.evalWithNSString:::* (synchronous) or *ActiveSimi.evalAsyncWithSMActiveSimi_Callback::::* (asynchronous) for invoking static, non-static or freestanding methods in your Šimi code. Calling these methods returns a SimiProperty.
```objc
...
- (IBAction)btnGoTap:(id)sender {
    id<SMSimiProperty> left = [SMSimiMapper toSimiPropertyWithId:[[JavaLangDouble alloc] initWithDouble:[[self.txtLeft text] doubleValue]]];
    id<SMSimiProperty> right = [SMSimiMapper toSimiPropertyWithId:[[JavaLangDouble alloc] initWithDouble:[[self.txtRIght text] doubleValue]]];
    id<SMSimiProperty> op = [SMSimiMapper toSimiPropertyWithId:[self.segOp titleForSegmentAtIndex:[self.segOp selectedSegmentIndex]]];
    id<SMSimiProperty> prop = [SMActiveSimi evalWithNSString:@"Calc" withNSString:@"compute" withSMSimiPropertyArray:[IOSObjectArray arrayWithProps:left, op, right, nil]];
    [self.lblResult setText:[NSString stringWithFormat:@"Result is: %@", prop]];
}
...
```
7. You can use static methods in *SMSimiMapper* class to convert iOS values, arrays and dictionaries to Šimi ones. There's also an IOSObjectArray+Simi extension that allows for simple adding of Šimi props to ISOObjectArray (needed by SMActiveSimi methods), as well as a ConversionUtil class that maps Java lists/sets/maps to NSArray/NSDictionary.
