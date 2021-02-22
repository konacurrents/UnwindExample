//
//  AppDelegate.m
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


//! returns AppDelegate singleton 4.19.2020
+(AppDelegate*)getAppDelegate;
{
    //    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    //    return appDelegate;
    __block AppDelegate *appDelegate;
    
    //AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if ([[NSThread currentThread] isMainThread])
    {
        appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];    }
    else
    {
        dispatch_sync(dispatch_get_main_queue(), ^{
            appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];        });
    }
    return appDelegate;
    
}

@end
