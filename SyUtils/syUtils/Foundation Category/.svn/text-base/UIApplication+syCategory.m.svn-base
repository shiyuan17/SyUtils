//
//  UIApplication+syCategory.m
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "UIApplication+syCategory.h"

@implementation UIApplication (syCategory)

#pragma mark - 获取document目录
- (NSURL *)documentsDirectoryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

#pragma mark - 获取缓存目录
- (NSURL *)cachesDirectoryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
}

#pragma mark - 获取下载目录
- (NSURL *)downloadsDirectoryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDownloadsDirectory inDomains:NSUserDomainMask] lastObject];
}

#pragma mark - 获取library目录
- (NSURL *)libraryDirectoryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask] lastObject];
}

#pragma mark - 获取lSupport目录
- (NSURL *)applicationSupportDirectoryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSApplicationSupportDirectory inDomains:NSUserDomainMask] lastObject];
}
@end
