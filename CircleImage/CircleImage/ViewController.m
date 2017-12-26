//
//  ViewController.m
//  CircleImage
//
//  Created by LZY on 17/12/26.
//  Copyright © 2017年 LZY. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Exction.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.imageView setHeaher:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511682048280&di=40aa097098ab81da2c309cbd98081df5&imgtype=0&src=http%3A%2F%2Fimg2.3lian.com%2F2014%2Ff3%2F71%2Fd%2F1.jpg"];
}


@end
