//
//  UIBarButtonItem+LZExtension.m
//  LZWeiBo
//
//  Created by apple on 16/2/27.
//  Copyright © 2016年 m14a. All rights reserved.
//

#import "UIBarButtonItem+LZExtension.h"

@implementation UIBarButtonItem (LZExtension)
/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    /*
    // 设置图片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    // 设置尺寸
    btn.size = btn.currentBackgroundImage.size;
     */
    // 设置图片
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    // 设置尺寸
    [btn sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

/**
 *  创建一个item
 *
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param color     颜色
 *  @param highColor 高亮显示颜色
 *  @param title     标题
 *  @param highTitle 高亮显示颜色
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor title:(NSString *)title highTitle:(NSString *)highTitle
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 设置文字
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitle:highTitle forState:UIControlStateHighlighted];
    // 设置文字颜色
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setTitleColor:highColor forState:UIControlStateHighlighted];
    // 设置尺寸
    [btn sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
