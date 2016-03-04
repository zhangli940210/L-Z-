//
//  UIBarButtonItem+LZExtension.h
//  LZWeiBo
//
//  Created by apple on 16/2/27.
//  Copyright © 2016年 m14a. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LZExtension)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor title:(NSString *)title highTitle:(NSString *)highTitle;
@end
