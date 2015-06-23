//
//  UIApplication+syCategory.h
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (syCategory)
/**
 *  获取document目录
 *
 *  @return document目录
 */
- (NSURL *)documentsDirectoryURL;

/**
 *  获取缓存目录
 *
 *  @return 缓存目录
 */
- (NSURL *)cachesDirectoryURL;

/**
 *  获取下载目录
 *
 *  @return 下载目录
 */
- (NSURL *)downloadsDirectoryURL;

/**
 *  获取library目录
 *
 *  @return library目录
 */
- (NSURL *)libraryDirectoryURL;

/**
 *  获取Support目录
 *
 *  @return Support目录
 */
- (NSURL *)applicationSupportDirectoryURL;
@end
