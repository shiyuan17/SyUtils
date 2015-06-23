//
//  UIButton+syCategory.h
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (syCategory)

/**
 *  设置按钮的默认状态的背景图片和高亮状态下的图片
 *
 *  @param image            默认状态图片
 *  @param highlightedImage 高亮状态下的图片
 */
- (void) setImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage;

/**
 *  设置按钮的普通状态背景图片和高亮状态下的背景图片
 *
 *  @param backgroundImage            默认状态下的背景图片
 *  @param highlightedBackgroundImage 高亮状态下的背景图片
 */
- (void) setBackgroundImage:(UIImage *)backgroundImage highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage;


@end
