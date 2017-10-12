//
//  ImageHandle.h
//  02-图片的水印效果
//
//  Created by huiwen on 15-3-7.
//  Copyright (c) 2015年 huiwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageHandle : NSObject


+ (UIImage *)waterMaskImage:(UIImage *)image text:(NSString *)text;


@end
