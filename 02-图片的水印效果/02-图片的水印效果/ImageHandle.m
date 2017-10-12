//
//  ImageHandle.m
//  02-图片的水印效果
//
//  Created by huiwen on 15-3-7.
//  Copyright (c) 2015年 huiwen. All rights reserved.
//

#import "ImageHandle.h"

@implementation ImageHandle


+ (UIImage *)waterMaskImage:(UIImage *)image text:(NSString *)text {
    
    //1.建立bitmap Context
    UIGraphicsBeginImageContext(image.size);
    
    //2.把原图绘制到context上
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    //3.把水印文字绘制到context上。
    //在左下角加水印
    CGRect textFrame = CGRectMake(0, image.size.height-40, 200, 40);
    
    UIFont *font = [UIFont boldSystemFontOfSize:30];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.alignment = NSTextAlignmentCenter;
    
    UIColor *color = [UIColor colorWithRed:254.0/255 green:201.0/255 blue:21.0/255 alpha:1];
    
    [text drawInRect:textFrame withAttributes:
     @{NSFontAttributeName:font,
       NSForegroundColorAttributeName:color,
       NSParagraphStyleAttributeName:style}];

    //4.从bitmap context上获取加了水印以后的图片。
    UIImage *waterImage = UIGraphicsGetImageFromCurrentImageContext();
    //5.关闭bitmap context。
    UIGraphicsEndImageContext();
    
    //6.返回获取的图片
    return waterImage;
}


@end
