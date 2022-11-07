#import "NocPlugin.h"
#if __has_include(<noc_plugin/noc_plugin-Swift.h>)
#import <noc_plugin/noc_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "noc_plugin-Swift.h"
#endif

@implementation NocPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNocPlugin registerWithRegistrar:registrar];
}
@end
