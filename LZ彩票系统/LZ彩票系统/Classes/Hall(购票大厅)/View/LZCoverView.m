//
//  LZCoverView.m
//  LZ彩票系统
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//  蒙版类

#import "LZCoverView.h"

@implementation LZCoverView

+ (void)show
{
    LZCoverView *cover  =  [[self alloc] init];
    //设置背景色
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.6;
    cover.frame = [UIScreen mainScreen].bounds;
    // 把显示到最外面的东西添加到窗口上.
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
}

@end
