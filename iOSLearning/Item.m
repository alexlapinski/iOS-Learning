#import "Item.h"

@interface Item()
@property(nonatomic,readonly,strong) UILabel* label;
@end

@implementation Item

@synthesize text = _text, label = _label;

- (id)initWithFrame:(CGRect)frame andText:(NSString *)text
{
    self = [super initWithFrame:frame];
    if (self) {
        _text = text;
        
        UILabel* label = [[UILabel alloc] initWithFrame:frame];
        [label setText:[self text]];
        [label sizeToFit];
        [self addSubview:label];
        _label = label;
        label = nil;
    }
    return self;
}

-(CGSize)sizeThatFits:(CGSize)size
{
    return [[self label] sizeThatFits:size];
}

@end
