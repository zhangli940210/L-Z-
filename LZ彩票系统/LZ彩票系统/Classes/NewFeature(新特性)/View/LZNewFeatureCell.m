//
//  LZNewFeatureCell.m
//  LZ彩票系统
//
//  Created by apple on 16/3/6.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZNewFeatureCell.h"

@interface LZNewFeatureCell ()
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

- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageV.image = image;
}



@end
