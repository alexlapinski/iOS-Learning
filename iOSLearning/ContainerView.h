#import <UIKit/UIKit.h>

@class Item;

@interface ContainerView : UIView

@property(nonatomic, strong) UIColor* color;

-(id) initWithFrame:(CGRect)frame andColor:(UIColor*) color;

-(void)addItemWithText:(NSString*)text;

@end
