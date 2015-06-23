//
//  SYMotionBlur.h
//  syUtil
//  模糊类 需要引入uikit.framework 是非arc，需要设置-fno-objc-arc
//  Created by 世缘 on 15/3/2.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SYMotionBlur : NSObject
{
    UIImageView *imageView_main;
}

@property (nonatomic, assign) UIImageView *imageView_main;

/**
 *  动态模糊
 *
 *  @param renderView 参照物渲染层
 *  @param showView   模糊显示层
 */
- (void)renderLayerWithView:(UIView*)renderView showView:(UIView *)showView;
@end
