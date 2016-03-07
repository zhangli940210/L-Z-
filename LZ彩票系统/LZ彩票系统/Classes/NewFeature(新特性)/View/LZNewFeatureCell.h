//
//  LZNewFeatureCell.h
//  LZ彩票系统
//
//  Created by apple on 16/3/6.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LZNewFeatureCell : UICollectionViewCell

@property (nonatomic, strong) UIImage *image;

/** 立即体验按钮*/
@property (nonatomic, weak) UIButton *startBtn;

// 设置立即体验按钮是否隐藏显示
- (void)setStartBtnHidden:(NSIndexPath *)indexPath count:(NSInteger)count;

@end
