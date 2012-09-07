#import "ViewController.h"
#import "ContainerView.h"
#import "ContainerGroupView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [_container1 setColor:[UIColor redColor]];
    [_container2 setColor:[UIColor blueColor]];
    [_container3 setColor:[UIColor greenColor]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    _container1 = nil;
    _container2 = nil;
    _container3 = nil;
}


-(IBAction)didPressAddToContainer1:(id)sender
{
    [_container1 addItemWithText:@"Test"];
    [_group setNeedsLayout];
}

-(IBAction)didPressAddToContainer2:(id)sender
{
    [_container2 addItemWithText:@"Test"];
    [_group setNeedsLayout];
}

-(IBAction)didPressAddToContainer3:(id)sender
{
    [_container3 addItemWithText:@"Test"];
    [_group setNeedsLayout];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}

@end
