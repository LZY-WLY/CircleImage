//
//  UIImage+Exction.m
//  百思不得姐
//
//  Created by LZY on 16/11/24.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "UIImage+Exction.h"

@implementation UIImage (Exction)
- (UIImage *)circleImage {
    //开启图片上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    //获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    //剪接
    CGContextClip(ctx);
    
    //将图片画上去
    [self drawInRect:rect];
    
    //得到图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束图片上下文
    UIGraphicsEndImageContext();
    
    return image;
}
@end
