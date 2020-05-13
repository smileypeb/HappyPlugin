/********* HappyPlugin.m Cordova Plugin Implementation *******/

#import "HappyPlugin.h"
#import <Cordova/CDVPlugin.h>

@implementation HappyPlugin

- (void)happyMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* responseString = [command.arguments objectAtIndex:0];

    if (responseString != nil && [responseString length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus: CDVCommandStatus_OK messageAsString: responseString];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus: CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult: pluginResult callbackId: command.callbackId];
}

@end
