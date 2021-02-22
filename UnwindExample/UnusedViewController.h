//
//  UnusedViewController.h
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//! Unused is only created to a Storyboard can add an entry for the exit segue = unwindHome
//! Through testing, it seems "unwindHome" will be found in code somewhere in the hierarchy
@interface UnusedViewController : UIViewController

//!define the unwindFromHelp
- (IBAction) unwindHome:(UIStoryboardSegue*)unwindSegue;

@end

NS_ASSUME_NONNULL_END
