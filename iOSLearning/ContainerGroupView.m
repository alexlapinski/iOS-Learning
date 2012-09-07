#import "ContainerGroupView.h"
#import "ContainerView.h"

static CGFloat const kPadding = 10;

@implementation ContainerGroupView

-(void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat currentY = 0;
    for(UIView* view in [self subviews])
    {
        if(![view isKindOfClass:[ContainerView class]]) continue;
        
        CGSize desiredSize = [view sizeThatFits:self.bounds.size];
        
        [view setFrame:(CGRect){CGPointMake(0,currentY),desiredSize}];
        currentY = view.frame.origin.y + view.frame.size.height + kPadding;
    }
}

@end
