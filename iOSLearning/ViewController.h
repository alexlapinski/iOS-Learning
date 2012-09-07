#import <UIKit/UIKit.h>
@class ContainerView, ContainerGroupView;

@interface ViewController : UIViewController
{
    IBOutlet ContainerGroupView* _group;
    
    IBOutlet ContainerView* _container1;
    IBOutlet ContainerView* _container2;
    IBOutlet ContainerView* _container3;
}

-(IBAction)didPressAddToContainer1:(id)sender;
-(IBAction)didPressAddToContainer2:(id)sender;
-(IBAction)didPressAddToContainer3:(id)sender;

@end
