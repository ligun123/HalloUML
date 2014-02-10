//
//  HWToolListView.m
//  HalloUML
//
//  Created by HalloWorld on 14-2-9.
//  Copyright (c) 2014年 HalloWorld. All rights reserved.
//

#import "HWToolListView.h"

#define kActionToolHeight 160.f

@implementation HWToolListView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        toolView = [[HWActionToolView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, kActionToolHeight)];
        [self addSubview:toolView];
        toolView.backgroundColor = [UIColor purpleColor];
        
        HWUMLListView *listView = [[HWUMLListView alloc] initWithFrame:CGRectMake(0, kActionToolHeight, frame.size.width, frame.size.height - kActionToolHeight)];
        [self addSubview:listView];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}


@end
