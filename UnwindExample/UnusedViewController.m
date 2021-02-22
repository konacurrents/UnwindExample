//
//  UnusedViewController.m
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import "UnusedViewController.h"

@interface UnusedViewController ()

@end

@implementation UnusedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



//!define the unwindFromHelp
- (IBAction) unwindHome:(UIStoryboardSegue*)unwindSegue
{
    UIViewController *destVC = unwindSegue.destinationViewController;
    UIViewController *sourceVC = unwindSegue.sourceViewController;
    NSLog(@"Unused: Unwinding unwindFromHelpViewController %@, %@, %@", unwindSegue, destVC, sourceVC);
}
@end
