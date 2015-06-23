//
//  UILabel+syCategory.h
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (syCategory)
/**
 *  初始化label
 *
 *  @param text     文字
 *  @param colorStr label文字颜色
 *  @param fontSize 大小
 *  @param frame    labelFrame
 *
 *  @return label
 */
-(id)initWithText:(NSString *)text fontColor:(NSString *)colorStr fontSize:(CGFloat)fontSize forFrame:(CGRect)frame;
-(id)initWithText:(NSString *)text color:(UIColor *)colorStr fontSize:(CGFloat)fontSize forFrame:(CGRect)frame;
@end
