//
//  AViewController.m
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//!define the unwindFromHelp
- (IBAction) NOTNOWunwindFromHelpViewController:(UIStoryboardSegue*)unwindSegue
{
    UIViewController *destVC = unwindSegue.destinationViewController;
    UIViewController *sourceVC = unwindSegue.sourceViewController;
    NSLog(@"A:Unwinding unwindFromHelpViewController %@, %@, %@", unwindSegue, destVC, sourceVC);
}

//!define the unwindFromHelp
- (IBAction) unwindHome:(UIStoryboardSegue*)unwindSegue
{
    UIViewController *destVC = unwindSegue.destinationViewController;
    UIViewController *sourceVC = unwindSegue.sourceViewController;
    NSLog(@"A:Unwinding unwindHome %@, %@, %@", unwindSegue, destVC, sourceVC);
}
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"A:viewDidAppear");
}
@end
