//
//  HWExpandHeaderView.m
//  HalloUML
//
//  Created by HalloWorld on 14-2-10.
//  Copyright (c) 2014年 HalloWorld. All rights reserved.
//

#import "HWExpandHeaderView.h"

#define kTagIndicatorView 10234

@implementation HWExpandHeaderView

+ (CGFloat)headerHeight {
    return 40.f;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        isExpanded = NO;
        self.backgroundColor = [UIColor brownColor];
        
        UIImage *img = [UIImage imageNamed:@"expandableImage@2x.png"];
        UIImageView *indicatorView = [[UIImageView alloc] initWithImage:img];
        indicatorView.tag = kTagIndicatorView;
        indicatorView.frame = CGRectOffset(indicatorView.frame, 130.f, [HWExpandHeaderView headerHeight] / 2);
        [self addSubview:indicatorView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnHeaderView:)];
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;
        [self addGestureRecognizer:tap];
    }
    return self;
}

- (UIImageView *)indicatorView {
    return (UIImageView *)[self viewWithTag:kTagIndicatorView];
}

- (void)tapOnHeaderView:(UITapGestureRecognizer *)tap {
    isExpanded = !isExpanded;
    NSLog(@"isExpanded : %d", isExpanded);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
