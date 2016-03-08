//
//  LZPopView.m
//  LZ彩票系统
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZPopView.h"

@interface LZPopView ()


@end

@implementation LZPopView

/**
 *  关闭按钮
 */
- (IBAction)closeBtnClick {
    if (_pBlock) {
        _pBlock();
    }
}

- (void)hiddenInPoint:(CGPoint)point completion:(void (^)())completion
{
    [UIView animateWithDuration:0.5 animations:^{
        self.center = point;
        self.transform = CGAffineTransformMakeScale(0.00001, 0.00001);
    } completion:^(BOOL finished) {
        // 调用block
        completion();
        // 之后将自己移除
        [self removeFromSuperview];
    }];
}

+ (instancetype)showInPoint:(CGPoint)point
{
    // 拿到主窗口
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    LZPopView *popV = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
    // 设置位置
    popV.center = point;
    // 添加到主窗口
    [window addSubview:popV];
    
    return popV;
}

@end
