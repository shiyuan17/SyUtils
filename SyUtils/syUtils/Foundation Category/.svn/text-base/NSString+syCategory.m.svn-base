//
//  NSString+syCategory.m
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "NSString+syCategory.h"

@implementation NSString (syCategory)
-(NSString *)URLEncodingUTF8String{
    NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                             (CFStringRef)self,
                                                                                             NULL,
                                                                                             CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                             kCFStringEncodingUTF8));
    
    return result;
}


#pragma mark - 编码 
- (NSString *)URLEncodedStringWithEncoding:(CFStringEncoding)encoding
{
    NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                             (CFStringRef)self,
                                                                                             NULL,
                                                                                             CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                             encoding));
    return result;
}

#pragma mark - 解码
-(NSString *)URLDecodingUTF8String{
    if(self){
        NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault,
                                                                                                                 (CFStringRef)self,
                                                                                                                 CFSTR(""),
                                                                                                                 kCFStringEncodingUTF8));
        return result;
    }
    
    return self;
}

- (NSInteger)dateCalculations{
    //创建日期格式化对象
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    //创建了两个日期对象
    NSDate *newDate=[NSDate date];
    
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:[self doubleValue]];
    
    //取两个日期对象的时间间隔：
    //这里的NSTimeInterval 并不是对象，是基本型，其实是double类型，是由c定义的:typedef double NSTimeInterval;
    NSTimeInterval time=[date2 timeIntervalSinceDate:newDate];
    
    int days=abs(((int)time)/(3600*24));
//    int hours=fabs(((int)time)%(3600*24)/3600);
    return days;
}

@end
