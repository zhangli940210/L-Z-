//
//  UIImage+image.h
//  01-彩票
//
//  Created by xiaomage on 16/3/4.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)
//返回一个没有经过渲染的图片
+ (UIImage *)imageWithOriImageName:(NSString *)imageName;

@end
