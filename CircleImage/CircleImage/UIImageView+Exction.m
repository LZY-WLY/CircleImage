//
//  UIImageView+Exction.m
//  ceshi
//
//  Created by LZY on 17/11/26.
//  Copyright © 2017年 LZY. All rights reserved.
//

#import "UIImageView+Exction.h"
#import "UIImage+Exction.h"
#import "UIImageView+WebCache.h"

@implementation UIImageView (Exction)
- (void)setHeaher:(NSString *)url {
    UIImage *imageDef = [[UIImage imageNamed:@"ic_8"] circleImage];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:imageDef completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        self.image = image ? [image circleImage] : imageDef;
    }];
}
@end
