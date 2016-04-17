//
//  LZTabBar.h
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^myBlock)(NSInteger);

@interface LZTabBar : UIView

/** 存模型数据*/
@property (nonatomic, strong) NSArray *itemArray;
/** 代理*/
/** block*/
@property (nonatomic, copy) myBlock pBlock;

@end
