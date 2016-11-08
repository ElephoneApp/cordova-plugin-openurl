#import "OpenSettings.h"

@implementation OpenSettings

- (void)open:(CDVInvokedUrlCommand *)command {
  NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];

  BOOL result = [[UIApplication sharedApplication] openURL:url];
  if (!result) {
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Unable to open URL"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    return;
  }

  CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:url];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
