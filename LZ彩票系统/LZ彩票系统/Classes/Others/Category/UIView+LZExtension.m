//
//  UIView+LZExtension.m
//  LZWeiBo
//
//  Created by apple on 16/2/27.
//  Copyright © 2016年 m14a. All rights reserved.
//

#import "UIView+LZExtension.h"

@implementation UIView (LZExtension)

// 给x赋值
- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
// 取值
- (CGFloat)x
{
    return self.frame.origin.x;
}
// 给y赋值
- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
// 取值
- (CGFloat)y
{
    return self.frame.origin.y;
}
// 给宽度赋值
- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

// 取值
- (CGFloat)width
{
    return self.frame.size.width;
}
// 给高度赋值
- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
// 取值
- (CGFloat)height
{
    return self.frame.size.height;
}
// 给尺寸赋值
- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
// 取值
- (CGSize)size
{
    return self.frame.size;
}
// 给坐标赋值
- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}
// 取值
- (CGPoint)origin
{
    return self.frame.origin;
}

@end
