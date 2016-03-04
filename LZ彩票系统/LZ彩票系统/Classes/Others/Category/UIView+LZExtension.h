//
//  UIView+LZExtension.h
//  LZWeiBo
//
//  Created by apple on 16/2/27.
//  Copyright © 2016年 m14a. All rights reserved.
//  分类只会生成方法，不会生成_成员变量

#import <UIKit/UIKit.h>

@interface UIView (LZExtension)
/** x*/
@property (nonatomic, assign) CGFloat x;
/** y*/
@property (nonatomic, assign) CGFloat y;
/** 中心点X*/
@property (nonatomic, assign) CGFloat centerX;
/** 中心点Y*/
@property (nonatomic, assign) CGFloat centerY;
/** 宽度*/
@property (nonatomic, assign) CGFloat width;
/** 高度*/
@property (nonatomic, assign) CGFloat height;
/** 尺寸*/
@property (nonatomic, assign) CGSize size;
/** 位置*/
@property (nonatomic, assign) CGPoint origin;
@end
