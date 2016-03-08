//
//  LZPopView.h
//  LZ彩票系统
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^WeiBoBlock)();

@interface LZPopView : UIView

+ (instancetype)showInPoint:(CGPoint)point;
// 给定一个点,隐藏到指定的位置
- (void)hiddenInPoint:(CGPoint)point completion:(void (^)())completion;
/** block变量*/
@property (nonatomic, copy) WeiBoBlock pBlock;
@end
