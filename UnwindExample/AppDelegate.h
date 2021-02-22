//
//  AppDelegate.h
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

//!dynamically specify which unwind to use.. 
@property (strong, nonatomic) NSString * unwindIdentityName;

//! returns AppDelegate singleton
+(AppDelegate*)getAppDelegate;
@end

