#import <UIKit/UIKit.h>

@interface Item : UIView

@property(nonatomic,readonly,strong) NSString* text;

-(id)initWithFrame:(CGRect)frame andText:(NSString*) text;

@end
