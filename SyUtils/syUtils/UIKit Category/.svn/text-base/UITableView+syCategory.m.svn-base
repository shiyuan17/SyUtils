//
//  UITableView+syCategory.m
//  syUtil
//
//  Created by 世缘 on 15/2/4.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "UITableView+syCategory.h"

@implementation UITableView (syCategory)
+ (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style cellSeparatorStyle:(UITableViewCellSeparatorStyle)cellSeparatorStyle separatorInset:(UIEdgeInsets)separatorInset dataSource:(id<UITableViewDataSource>)dataSource delegate:(id<UITableViewDelegate>)delegate
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:style];
    [tableView setSeparatorStyle:cellSeparatorStyle];
    [tableView setSeparatorInset:separatorInset];
    [tableView setDelegate:delegate];
    [tableView setDataSource:dataSource];
    
    return tableView;
}

- (NSArray *)getIndexPathsForSection:(NSUInteger)section;
{
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSInteger rows = [self numberOfRowsInSection:section];
    for (int i = 0; i < rows; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i inSection:section];
        [indexPaths addObject:indexPath];
    }
    
    return (NSArray *)indexPaths;
}

- (NSIndexPath *)getNextIndexPath:(NSUInteger)row forSection:(NSUInteger)section
{
    NSArray *indexPaths = [self getIndexPathsForSection:section];
    return [indexPaths objectAtIndex:row+1];
}

- (NSIndexPath *)getPreviousIndexPath:(NSUInteger)row forSection:(NSUInteger)section
{
    NSArray *indexPaths = [self getIndexPathsForSection:section];
    return [indexPaths objectAtIndex:row-1];
}
@end
