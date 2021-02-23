//
//  HelpViewController.m
//  UnwindExample
//
//  Created by Scott Moody on 2/21/21.
//

#import "HelpViewController.h"
#include "AppDelegate.h"

@interface HelpViewController ()
@property (weak, nonatomic) IBOutlet UIButton *segueDynamicLabel;

@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //set the label
    NSString *segueID = [[AppDelegate getAppDelegate] unwindIdentityName];
    NSString *label = [NSString stringWithFormat:@"Dynamic Unwind: %@", segueID];
    [_segueDynamicLabel setTitle:label forState:UIControlStateNormal];
    
    //change the text on the window
    [self.textView setText:@""];

}
//!calls a segue ID dynamically
-(void) callUnwindSegueID:(NSString*)segueID
{
    @try {
        //no method to retrieve a UnwindSegue .. so hope for the best..??
        
        //!sender:The object that you want to use to initiate the segue. This object is made available for informational purposes during the actual segue.

        [self performSegueWithIdentifier:segueID sender:self];
    } @catch (NSException *exception) {
        NSLog(@"Help.**exception %@", exception);
        
        NSString *s = [NSString stringWithFormat:@"Help Exception: %@", exception];
        [self.textView setText:s];
    } @finally {
        
    }
}

//!still unwinds to "unwindFromHelpViewController"
- (IBAction)unwindInCodeCalled:(id)sender {
    
    [self callUnwindSegueID:@"unwindHome"];

}
//!looks up the segue ID from a user settable variable (or pass as a delegate like method name)
- (IBAction)unwindDynamicCalled:(id)sender {
    
    NSString *segueID = [[AppDelegate getAppDelegate] unwindIdentityName];
    NSLog(@"unwindDynamicCalled: %@", segueID);
    [self callUnwindSegueID:segueID];
       
}

@end
