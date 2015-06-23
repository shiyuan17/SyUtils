//
//  NetWorkError.m
//  syUtil
//
//  Created by 世缘 on 15/3/20.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "NetWorkErrorView.h"

@implementation NetWorkErrorView
-(id)init{
    if (self = [super init]) {
        self.frame = CGRectMake(0, startWithNav, SCREEN_BOUNDS_WIDTH, SCREEN_BOUNDS_HEIGHT-startWithNav-toolbarHeight);
		self.backgroundColor = [UIColor redColor];
		UITapGestureRecognizer *tgr = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(screenViewClick)];
		[self addGestureRecognizer:tgr];
		
        UIImageView *netWrokImg = [[UIImageView alloc]init];
		netWrokImg.userInteractionEnabled = YES;
        
        CGFloat netWrokImgWidth = 83;
        netWrokImg.frame = CGRectMake(0, (self.height-netWrokImgWidth-startWithNav-toolbarHeight)/2, netWrokImgWidth, netWrokImgWidth);
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
		self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(void)screenViewClick{
	if ([self.delegate respondsToSelector:@selector(networkReload)]) {
		[self.delegate networkReload];
	}
}


@end
