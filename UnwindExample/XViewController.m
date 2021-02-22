//
//  XViewController.m
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import "XViewController.h"

@interface XViewController ()

@end

@implementation XViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



//!define the unwindFromHelp
- (IBAction) unwindFromHelpViewController:(UIStoryboardSegue*)unwindSegue
{
    UIViewController *destVC = unwindSegue.destinationViewController;
    UIViewController *sourceVC = unwindSegue.sourceViewController;
    NSLog(@"X:Unwinding unwindFromHelpViewController %@, %@, %@", unwindSegue, destVC, sourceVC);
}



@end
