//
//  HWUMLListView.m
//  HalloUML
//
//  Created by HalloWorld on 14-2-10.
//  Copyright (c) 2014年 HalloWorld. All rights reserved.
//

#import "HWUMLListView.h"
#import "HWExpandHeaderView.h"

@implementation HWUMLListView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UITableView *sksTableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        sksTableView.delegate = self;
        sksTableView.dataSource = self;
        [self addSubview:sksTableView];
    }
    return self;
}

- (NSArray *)mElementArray
{
    if (!_mElementArray) {
        _mElementArray = @[@[@"Interface",@"Class"]];
    }
    
    return _mElementArray;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - Table View Delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"umlElementCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    //add code here to init cell
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.mElementArray[indexPath.section][indexPath.row];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.mElementArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.mElementArray[section] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return [HWExpandHeaderView headerHeight];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[HWExpandHeaderView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, [HWExpandHeaderView headerHeight])];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
