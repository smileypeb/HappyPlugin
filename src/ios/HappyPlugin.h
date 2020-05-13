/********* HappyPlugin.h Cordova Plugin Header *******/
#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface HappyPlugin : CDVPlugin

- (void)happyMethod:(CDVInvokedUrlCommand*)command;

@end
