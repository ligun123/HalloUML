//
//  HWViewController.m
//  HalloUML
//
//  Created by HalloWorld on 14-2-9.
//  Copyright (c) 2014年 HalloWorld. All rights reserved.
//

#import "HWViewController.h"
#import "HWToolListView.h"

@interface HWViewController ()

@end

@implementation HWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    HWToolListView *vToolList = [[HWToolListView alloc] initWithFrame:CGRectMake(0, 0, 200, self.view.bounds.size.height)];
    vToolList.backgroundColor = [UIColor greenColor];
    [self.view addSubview:vToolList];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
