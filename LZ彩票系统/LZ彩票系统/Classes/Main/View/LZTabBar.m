//
//  LZTabBar.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZTabBar.h"
#import "LZBtn.h"

@interface LZTabBar ()

/** 上一次选中的按钮*/
@property (nonatomic, strong) UIButton *preSelectedBtn;
@end

@implementation LZTabBar

- (void)setItemArray:(NSArray *)itemArray
{
    _itemArray = itemArray;
    // 创建按钮
    NSInteger count = itemArray.count;
    for (NSInteger i = 0; i < count; i++) { // 5个模型
        LZBtn *btn = [[LZBtn alloc] init];
        btn.tag = i;
        // 给按钮设置背景图片
        UITabBarItem *item = itemArray[i];
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        // 添加按钮监听事件
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:btn];
        
        if (i == 0) {
            [self btnClick:btn];
        }
    }
}

- (void)btnClick:(LZBtn *)btn
{
    // 取消上次选中的按钮
    self.preSelectedBtn.selected = NO;
    // 设置现在点击的按钮选中
    btn.selected = YES;
    // 赋值给上一次按钮作为选中按钮
    self.preSelectedBtn = btn;
    
//    if ([self.delegate respondsToSelector:@selector(tabBar:selectBtnIndex:)]) {
//        [self.delegate tabBar:self selectBtnIndex:btn.tag];
//    }
    if (_pBlock) {
        _pBlock(btn.tag);
    }
}

// 布局按钮
- (void)layoutSubviews
{
    [super layoutSubviews];
    NSInteger count = self.subviews.count;
    CGFloat btnW = self.bounds.size.width / count;
    CGFloat btnH = self.bounds.size.height;
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    for (NSInteger i = 0; i < count; i++) {
        btnX = i * btnW;
        LZBtn *btn = self.subviews[i];
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
    
}


@end
