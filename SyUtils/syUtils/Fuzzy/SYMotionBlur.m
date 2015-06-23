//
//  SYMotionBlur.m
//  syUtil
//
//  Created by 世缘 on 15/3/2.
//  Copyright (c) 2015年 sy. All rights reserved.
//

#import "SYMotionBlur.h"

@implementation SYMotionBlur
{
    BOOL lock;
}
@synthesize imageView_main;

- (void)renderLayerWithView:(UIView*)renderView showView:(UIView *)showView
{
    if (lock) {
        return;
    }
    lock=YES;
    if (!imageView_main) {
        UIImageView *imageview=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, showView.frame.size.width, showView.frame.size.height)];
        [showView insertSubview:imageview atIndex:0];
        imageView_main=imageview;
        [imageview release];
    }
    [imageView_main retain];
    __block CGRect visibleRect= [renderView convertRect:imageView_main.frame toView:renderView];
    CALayer *layers=renderView.layer;
    __block UIImage *images;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        UIGraphicsBeginImageContextWithOptions(visibleRect.size, NO, 1);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextTranslateCTM(context, -visibleRect.origin.x, -visibleRect.origin.y);
        [layers renderInContext:context];
        
        images= UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        NSData *imageData = UIImagePNGRepresentation(images);
        
        images = [[UIImage imageWithData:imageData] drn_boxblurImageWithBlur:0.8f];
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            lock=NO;
            imageView_main.image = images;
            [imageView_main	release];
        });
    });
}
@end
