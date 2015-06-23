//
//  HttpTool.m
//  DotaMaster
//
//  Created by 世缘 on 15/4/9.
//  Copyright (c) 2015年 Qian. All rights reserved.
//

#import "HttpTool.h"
#import "AFNetworking.h"
#import "NetWorkStatus.h"

@implementation HttpTool
#pragma mark - 网络请求前处理，无网络不请求
+(BOOL)requestBeforeCheckNetWorkWithFailureBlock:(failureBlocks)errorBlock{
    BOOL isFi=[NetWorkStatus isFi];
    
    if(!isFi){//无网络
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if(errorBlock!=nil){
                errorBlock(nil);
                DLog(@"无网络,请打开网络");
            }
        });
    }else{//有网络
        [NetWorkStatus startNetworkActivity];
    }
    
    return isFi;
}

#pragma mark - post
+ (void)postWithURL:(NSString *)url params:(NSDictionary *)params success:(successBlock)success failure:(void (^)(NSError *))failure
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        if(![self requestBeforeCheckNetWorkWithFailureBlock:failure]){
            return;
        }
        // 1.创建请求管理对象
        AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
        mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
        mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
		mgr.requestSerializer.timeoutInterval = 10;
		
		//为url编码
		NSString *urlStr = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        // 2.发送请求
        [mgr POST:urlStr parameters:params
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
              dispatch_async(dispatch_get_main_queue(), ^{
                  [NetWorkStatus stopNetworkActivity];
                  if (success) {
                      success(responseObject);
                  }
              });
              
          } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              dispatch_async(dispatch_get_main_queue(), ^{
                  [NetWorkStatus stopNetworkActivity];
                  if (failure) {
                      DLog(@"网络请求日志\n请求URL：%@ \n信息：%@",url,[error.userInfo objectForKey:@"NSLocalizedDescription"]);
                      failure(error);
                  }
              });
              
          }];
    });
    
}

#pragma mark - post 文件请求formData
+ (void)postWithURL:(NSString *)url params:(NSDictionary *)params formDataArray:(NSArray *)formDataArray success:(successBlock)success failure:(void (^)(NSError *))failure
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        if(![self requestBeforeCheckNetWorkWithFailureBlock:failure]){
            return;
        }
        // 1.创建请求管理对象
        AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
        mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
        mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
		mgr.requestSerializer.timeoutInterval = 30;
		
		//为url编码
		NSString *urlStr = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        // 2.发送请求
        [mgr POST:urlStr parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> totalFormData) {
            for (HttpToolFormData *formData in formDataArray) {
                [totalFormData appendPartWithFileData:formData.data name:formData.name fileName:formData.filename mimeType:formData.mimeType];
            }
        } success:^(AFHTTPRequestOperation *operation, id responseObject) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [NetWorkStatus stopNetworkActivity];
                if (success) {
                    success(responseObject);
                }
            });
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [NetWorkStatus stopNetworkActivity];
                if (failure) {
                    DLog(@"网络请求日志\n请求URL：%@ \n信息：%@",url,[error.userInfo objectForKey:@"NSLocalizedDescription"]);
                    failure(error);
                }
            });
        }];
    });
    
}

#pragma mark - get
+ (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(successBlock)success failure:(void (^)(NSError *))failure
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        if(![self requestBeforeCheckNetWorkWithFailureBlock:failure]){
            return;
        }
        // 1.创建请求管理对象
        AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
        mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
        mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
		mgr.requestSerializer.timeoutInterval = 10;
		
		//为url编码
		NSString *urlStr = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        // 2.发送请求
        [mgr GET:urlStr parameters:params
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             dispatch_async(dispatch_get_main_queue(), ^{
                 [NetWorkStatus stopNetworkActivity];
                 if (success) {
                     success(responseObject);
                 }
             });
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             dispatch_async(dispatch_get_main_queue(), ^{
                 [NetWorkStatus stopNetworkActivity];
                 if (failure) {
                     DLog(@"网络请求日志\n请求URL：%@ \n信息：%@",url,[error.userInfo objectForKey:@"NSLocalizedDescription"]);
                     failure(error);
                 }
             });
         }];
    });
    
}

@end



/**
 *  用来封装文件数据的模型
 */
@implementation HttpToolFormData

@end
