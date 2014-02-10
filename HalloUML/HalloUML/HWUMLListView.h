//
//  HWUMLListView.h
//  HalloUML
//
//  Created by HalloWorld on 14-2-10.
//  Copyright (c) 2014年 HalloWorld. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HWUMLListView : UIView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *mElementArray;

@end
