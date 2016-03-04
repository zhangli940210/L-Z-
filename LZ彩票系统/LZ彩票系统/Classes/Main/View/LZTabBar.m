//
//  LZTabBar.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZTabBar.h"

@implementation LZTabBar

- (void)setItemArray:(NSArray *)itemArray
{
    _itemArray = itemArray;
    // 创建按钮
    NSInteger count = itemArray.count;
    for (NSInteger i = 0; i < count; i++) { // 5个模型
//        UIButton *btn = [[UIButton alloc] init];
//        // 给按钮设置背景图片
//        UITabBarItem *item = itemArray[i];
//        [btn setBackgroundImage:[UIImage imageNamed:item.image] forState:UIControlStateNormal];
//        [btn setBackgroundImage:[UIImage imageNamed:item.selectedImage] forState:UIControlStateSelected];
//        [self addSubview:btn];
        //创建按钮
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        //取出UITabBarItem模型
        UITabBarItem *item = itemArray[i];
        
        //设置按钮的背景图片
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        
        [self addSubview:btn];
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
        UIButton *btn = self.subviews[i];
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
    
}


@end
