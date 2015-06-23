//
//  NetWorkError.m
//  syUtil
//
//  Created by 世缘 on 15/3/20.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "NetWorkError.h"

@implementation NetWorkError
-(id)init{
    if (self = [super init]) {
        self.frame = CGRectMake(0, 0, SCREEN_BOUNDS_WIDTH, SCREEN_BOUNDS_HEIGHT);
        UIImageView *netWrokImg = [[UIImageView alloc]init];
        
        CGFloat netWrokImgWidth = 83;
        netWrokImg.frame = CGRectMake(0, 220, netWrokImgWidth, netWrokImgWidth);
        netWrokImg.image = [UIImage imageNamed:@"networkErr"];
        [self addSubview:netWrokImg];
        [netWrokImg setUIViewCenter];
        
        NSString *errorText = @"网络不好哦，请检查网络设置轻触屏幕重新加载";
        UILabel *lblDes = [[UILabel alloc]init];
        lblDes.frame = CGRectMake(0, [netWrokImg getEndYwith:5], 192, 100);
        lblDes.backgroundColor = [UIColor clearColor];
        lblDes.font = [UIFont systemFontOfSize:14];
        lblDes.numberOfLines=0;
        lblDes.textColor = RGB16(0xb9b9b9);
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:errorText];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:10];
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [errorText length])];
        lblDes.attributedText = attributedString;
        lblDes.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:lblDes];
        [lblDes setUIViewCenter];
        
    }
    return self;
}


@end
