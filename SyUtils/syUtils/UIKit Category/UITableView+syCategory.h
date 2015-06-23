//
//  UITableView+syCategory.h
//  syUtil
//
//  Created by 世缘 on 15/2/4.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (syCategory)
/**
 *  初始化tableview
 *
 *  @param frame              TableView's frame
 *  @param style              TableView's style
 *  @param cellSeparatorStyle Cell separator style
 *  @param separatorInset     Cell separator inset
 *  @param dataSource         TableView's data source
 *  @param delegate           TableView's delegate
 *
 *  @return Return the created UITableView
 */
+ (UITableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style cellSeparatorStyle:(UITableViewCellSeparatorStyle)cellSeparatorStyle separatorInset:(UIEdgeInsets)separatorInset dataSource:(id <UITableViewDataSource>)dataSource delegate:(id <UITableViewDelegate>)delegate;

/**
 *  获得下一个indexPath
 *
 *  @param row
 *  @param section
 *
 *  @return Return the next index path
 */
- (NSIndexPath *)getNextIndexPath:(NSUInteger)row
                       forSection:(NSUInteger)section;

/**
 *  获取上一个indexPath
 *
 *  @param row
 *  @param section
 *
 *  @return Return the previous index path
 */
- (NSIndexPath *)getPreviousIndexPath:(NSUInteger)row
                           forSection:(NSUInteger)section;
@end
