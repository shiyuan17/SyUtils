//
//  UIImage+syCategory.h
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (syCategory)

/**
 *  以中心点拉伸图片
 *
 *  @param tmpImage 要拉伸的图片
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)resizedImageWithImage:(UIImage *)tmpImage;

/**
 *  UIColor转图片
 *
 *  @param imageName 图片名称
 *  @param frame     显示的区域
 *
 *  @return UIColor对象
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  图片圆形
 *
 *  @param image 图片
 *  @param inset 范围
 *
 *  @return 圆形图片
 */
+(UIImage*) circleImage:(UIImage*) image withParam:(CGFloat) inset;

/**
 *  屏幕截图
 *
 *  @return 屏幕图像
 */
+ (UIImage *)screenshot;

/**
 *  (截图)截取某个view的图片
 *
 *  @param 要截图的view
 *
 *  @return view的截图
 */
+ (UIImage *)screenshotWithView:(UIView *)view;

/**
 *  图像等比压缩
 *
 *  @param size 大小
 *
 *  @return 压缩后的图像
 */
- (UIImage*)scaleToSize:(CGSize)size;

/**
 *  设置透明
 *
 *  @return 透明图片
 */
- (UIImage *)fillAlpha;

/**
 *  设置图片透明根据某个颜色进行透明
 *
 *  @param color 颜色
 *
 *  @return 透明图片
 */
- (UIImage *)fillAlphaWithColor:(UIColor *)color;

/**
 *  是否为灰色图片
 *
 *  @return YES/NO
 */
- (BOOL)isGrayscale;

/**
 *  图片变灰
 *
 *  @return 灰度图片
 */
- (UIImage *)imageToGrayscale;

/**
 *  图片变黑白
 *
 *  @return 黑白图片
 */
- (UIImage *)imageToBlackAndWhite;

/**
 *  图片模糊
 *
 *  @param blur 模糊值
 *
 *  @return 模糊后的图片
 */
- (UIImage*)drn_boxblurImageWithBlur:(CGFloat)blur;



@end
