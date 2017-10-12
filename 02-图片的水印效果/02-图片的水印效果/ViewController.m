//
//  ViewController.m
//  02-图片的水印效果
//
//  Created by huiwen on 15-3-7.
//  Copyright (c) 2015年 huiwen. All rights reserved.
//

#import "ViewController.h"
#import "ImageHandle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //UIImage 54班工作室
    
    //创建一个UIImage对象
    UIImage *image = [UIImage imageNamed:@"scene1.jpg"];
    
    image = [ImageHandle waterMaskImage:image text:@"54班工作室"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(50, 50, 432/2, 324/2);
    [self.view addSubview:imageView];

}




@end
