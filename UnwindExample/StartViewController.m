//
//  ViewController.m
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import "StartViewController.h"
#import "AppDelegate.h"

@interface StartViewController ()

@property (weak, nonatomic) IBOutlet UITextField *unwindDynamicNameTextField;
@end

@implementation StartViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *defaultUnwindName = @"unwindHome";
    [_unwindDynamicNameTextField setText:defaultUnwindName];
    [[AppDelegate getAppDelegate] setUnwindIdentityName:defaultUnwindName];
}

//!define the unwindFromHelp
- (IBAction) unwindFromHelpViewController:(UIStoryboardSegue*)unwindSegue
{
    UIViewController *destVC = unwindSegue.destinationViewController;
    UIViewController *sourceVC = unwindSegue.sourceViewController;
    NSLog(@"Unwinding unwindFromHelpViewController %@, %@, %@", unwindSegue, destVC, sourceVC);
}

@end
