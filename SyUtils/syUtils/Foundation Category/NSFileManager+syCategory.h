//
//  NSFileManager+syCategory.h
//  syUtil
//
//  Created by 世缘 on 15/2/4.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Directory type enum
 */
typedef NS_ENUM(NSInteger, DirectoryType)
{
    DirectoryTypeMainBundle = 0,
    DirectoryTypeLibrary,
    DirectoryTypeDocuments,
    DirectoryTypeCache
};

@interface NSFileManager (syCategory)

/**
 *  读取文本文件
 *
 *  @param file 文件名
 *  @param type 文件类型
 *
 *  @return 文本
 */
+ (NSString *)readTextFile:(NSString *)file
                    ofType:(NSString *)type;

/**
 *  保存数据到一个plist文件中
 *
 *  @param path     目录
 *  @param fileName 名称
 *  @param array    要保存的数组
 *
 *  @return 保存成功YES/失败NO
 */
+ (BOOL)saveArrayToPath:(DirectoryType)path
           withFilename:(NSString *)fileName
                  array:(NSArray *)array;

/**
 *  从plist文件中加载数据到数组中
 *
 *  @param path     plist目录
 *  @param fileName 文件名
 *
 *  @return 加载好的array
 */
+ (NSArray *)loadArrayFromPath:(DirectoryType)path
                  withFilename:(NSString *)fileName;

/**
 *  根据名称获取bundle的绝对路径
 *
 *  @param 文件名称
 *
 *  @return bundle的绝对路径
 */
+ (NSString *)getBundlePathForFile:(NSString *)fileName;

/**
 *  根据名称获取Document的绝对路径
 *
 *  @param 文件名称
 *
 *  @return Documents的绝对路径
 */
+ (NSString *)getDocumentsDirectoryForFile:(NSString *)fileName;

/**
 *  根据名称获取Library的绝对路径
 *
 *  @param 文件名称
 *
 *  @return Library的绝对路径
 */
+ (NSString *)getLibraryDirectoryForFile:(NSString *)fileName;

/**
 *  根据名称获取Cache的绝对路径
 *
 *  @param 文件名称
 *
 *  @return Cache的绝对路径
 */
+ (NSString *)getCacheDirectoryForFile:(NSString *)fileName;

/**
 *  根据文件名称和路径删除文件
 *
 *  @param 文件名称
 *  @param origin   文件目录
 *
 *  @return 删除成功YES/NO
 */
+ (BOOL)deleteFile:(NSString *)fileName fromDirectory:(DirectoryType)directory;

@end
