//
//  LZNewFeatureCell.m
//  LZ彩票系统
//
//  Created by apple on 16/3/6.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZNewFeatureCell.h"
#import "LZTabBarController.h"

@interface LZNewFeatureCell ()

/** 立即体验按钮*/
@property (nonatomic, weak) UIButton *startBtn;

@property (nonatomic , weak) UIImageView *imageV;


@end

@implementation LZNewFeatureCell

#pragma mark - 懒加载
- (UIImageView *)imageV
{
    if (_imageV == nil) { // 里面执行了2次
        UIImageView *imageV = [[UIImageView alloc] init];
        imageV.frame = self.bounds;
        [self.contentView addSubview:imageV];
        _imageV = imageV;
    }
    return _imageV;
}

- (UIButton *)startBtn
{
    if (_startBtn == nil) {
        UIButton *startBtn= [[UIButton alloc] init];
        // 设置图片
        [startBtn setImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        // 设置尺寸
        [startBtn sizeToFit];
        // 设置按钮位置
        startBtn.center = CGPointMake(self.width * 0.5, self.height * 0.85);
        // 添加上去
        [self.contentView addSubview:startBtn];
        // 添加监听事件
        [startBtn addTarget:self action:@selector(startBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _startBtn = startBtn;
        
    }
    return _startBtn;
}

// 切换控制器
- (void)startBtnClick
{
    LZTabBarController *tabVC = [[LZTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tabVC;
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageV.image = image;
}

// 设置立即体验按钮是否隐藏显示
- (void)setStartBtnHidden:(NSIndexPath *)indexPath count:(NSInteger)count
{
    if (indexPath.item == count - 1) {
        self.startBtn.hidden = NO;
    } else {
        self.startBtn.hidden = YES;
    }
}


@end
