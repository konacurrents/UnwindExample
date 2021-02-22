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
@property (weak, nonatomic) IBOutlet UISegmentedControl *dynamicUnwindNameSwitch;
@end

@implementation StartViewController
-(void) setUnwindTextField:(NSString*)unwindName
{
    [_unwindDynamicNameTextField setText:unwindName];
    [[AppDelegate getAppDelegate] setUnwindIdentityName:unwindName];
}
- (IBAction)dynamicUnwindNameSwitchTouched:(id)sender {
    switch ([_dynamicUnwindNameSwitch selectedSegmentIndex])
    {
        case 0: //
            [self setUnwindTextField:@"unwindHome"];
            break;
        case 1:
        default:
            [self setUnwindTextField:@"unwindFromHelpViewController"];

            
    }
}


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
    NSLog(@"Start:Unwinding unwindFromHelpViewController %@, %@, %@", unwindSegue, destVC, sourceVC);
}

//!define the unwindFromHelp - called "unwindHome"
- (IBAction) unwindHome:(UIStoryboardSegue*)unwindSegue
{
    UIViewController *destVC = unwindSegue.destinationViewController;
    UIViewController *sourceVC = unwindSegue.sourceViewController;
    NSLog(@"Sart:Unwinding unwindHome %@, %@, %@", unwindSegue, destVC, sourceVC);
}
@end
