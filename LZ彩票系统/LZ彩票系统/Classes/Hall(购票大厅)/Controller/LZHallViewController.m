//
//  LZHallViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZHallViewController.h"
#import "LZCoverView.h"
#import "LZPopView.h"

@interface LZHallViewController () // <LZPopViewDelegate>

@end

@implementation LZHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriImageName:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(activity)];

}

// 活动
- (void)activity
{
    // 把显示到最外面的东西添加到窗口上.
    [LZCoverView show];
    
    // 显示popView
    __block __weak LZPopView *popV =  [LZPopView showInPoint:self.view.center];
    
    popV.pBlock = ^ {
        //决定隐藏到哪个位置
        [popV hiddenInPoint:CGPointMake(20, 40) completion:^{
            //移除遮盖
            for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
                //判断当前View是否是遮盖
                if([view isKindOfClass:[LZCoverView class]]) {
                    [view removeFromSuperview];
                }
            }
        }];
    };
    
}

#pragma mark - LZPopViewDelegate方法

/*
- (void)popViewClickBtn:(LZPopView *)popView {
    
    //决定隐藏到哪个位置
    [popView hiddenInPoint:CGPointMake(20, 40) completion:^{
        //移除遮盖
        for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
            //判断当前View是否是遮盖
            if([view isKindOfClass:[LZCoverView class]]) {
                [view removeFromSuperview];
            }
        }
    }];
}
*/
@end
