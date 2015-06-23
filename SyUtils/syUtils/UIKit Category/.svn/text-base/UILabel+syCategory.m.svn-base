//
//  UILabel+syCategory.m
//  syUtil
//
//  Created by 世缘 on 15/2/3.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "UILabel+syCategory.h"

@implementation UILabel (syCategory)

#pragma mark -  初始化label
+(id)create{
	UILabel *lbl = [[self alloc]init];
	lbl.backgroundColor = [UIColor clearColor];
	
	return lbl;
}

-(id)initWithText:(NSString *)text fontColor:(NSString *)colorStr fontSize:(CGFloat)fontSize forFrame:(CGRect)frame{
    self.frame = frame;
    self.font = self.font;
    self.backgroundColor = [UIColor clearColor];
    self.textColor = [UIColor colorFromHexString:[NSString stringWithFormat:@"#%@",colorStr]];
    self.textAlignment = NSTextAlignmentCenter;
    self.text = text;
    return self;
}
-(id)initWithText:(NSString *)text color:(UIColor *)colorStr fontSize:(CGFloat)fontSize forFrame:(CGRect)frame{
	if (self=[self init]) {
		self.frame = frame;
		self.font = [UIFont systemFontOfSize:fontSize];
		self.backgroundColor = [UIColor clearColor];
		self.textColor =colorStr;// [UIColor colorFromHexString:[NSString stringWithFormat:@"#%@",colorStr]];
		self.textAlignment = NSTextAlignmentCenter;
		self.text = text;
	}
	
	return self;
}
@end
