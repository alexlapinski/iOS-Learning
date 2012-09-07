#import "ContainerView.h"
#import "Item.h"

static NSUInteger const kPadding = 10;

@implementation ContainerView

@synthesize color = _color;

- (id)initWithFrame:(CGRect)frame andColor:(UIColor*) color
{
    self = [super initWithFrame:frame];
    if (self) {
        _color = color;
        [self setBackgroundColor:[self color]];
    }
    return self;
}

-(void)setColor:(UIColor *)color
{
    _color = color;
    [self setBackgroundColor:[self color]];
    [self setNeedsDisplay];
}

-(void)addItemWithText:(NSString *)text
{
    Item* item = [[Item alloc] initWithFrame:[self bounds] andText:text];
    [self addSubview:item];
    [self setNeedsLayout];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat currentY = 0;
    for(UIView* view in [self subviews])
    {
        if(![view isKindOfClass:[Item class]]) continue;
        
        [view layoutIfNeeded];
        
        CGSize desiredRect = [view sizeThatFits:self.frame.size];
        
        CGRect subviewFrame = (CGRect){CGPointMake(0,currentY),desiredRect};
        
        [view setFrame:subviewFrame];
        currentY = subviewFrame.origin.y + subviewFrame.size.height + kPadding;
    }
}

-(CGSize)sizeThatFits:(CGSize)size
{
    CGSize desiredSize = CGSizeZero;
    
    desiredSize.width = size.width; // use full width
    
    if([[self subviews] count] == 0) {
        return desiredSize; // no need to iterate if there are no items
    }
    
    for(UIView* view in [self subviews])
    {
        if(![view isKindOfClass:[Item class]]) continue;
        
        CGSize componentSize = [view sizeThatFits:size];
        desiredSize.height += componentSize.height + kPadding;
    }
    
    // remove the padding so that the last item is flush with the bottom border
    desiredSize.height -= kPadding;
    
    return desiredSize;
}

@end
