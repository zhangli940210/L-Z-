//
//  LZNewFeatureViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/6.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZNewFeatureViewController.h"
#import "LZNewFeatureCell.h"

@interface LZNewFeatureViewController ()

//上一次的offset.x
@property (nonatomic ,assign) CGFloat preOffsetX;
//guide1ImageV
@property (nonatomic , weak) UIImageView *guide1ImageV;

@end

@implementation LZNewFeatureViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    // 创建流水布局
    UICollectionViewFlowLayout *flowL = [[UICollectionViewFlowLayout alloc] init];
    // 设置每一个格子的大小
    flowL.itemSize = CGSizeMake(ScreenW, ScreenH);
    // 设置最小行间距
    flowL.minimumLineSpacing = 0;
    // 设置每个格子之间的间距
    flowL.minimumInteritemSpacing = 0;
    // 设置滚动的方向
    flowL.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return [super initWithCollectionViewLayout:flowL];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // 使用CollectionView时必须得要注册Cell
    [self.collectionView registerClass:[LZNewFeatureCell class] forCellWithReuseIdentifier:reuseIdentifier];
    //取消弹簧效果
    self.collectionView.bounces = NO;
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //添加子控件
    [self setUp];
    
}

- (void)setUp {
    //guideLine
    UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    imageV.x -= 150;
    [self.collectionView addSubview:imageV];
    

    //guide1
    UIImageView *guide1ImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    guide1ImageV.x += 50;
    self.guide1ImageV = guide1ImageV;
    [self.collectionView addSubview:guide1ImageV];

    //guideLargeText3
    UIImageView *largeTextImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText3"]];
    largeTextImageV.center = CGPointMake(self.view.width * 0.5, self.view.height * 0.7);
    [self.collectionView addSubview:largeTextImageV];

    //guideSmallText1
    UIImageView *smallTextImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    smallTextImageV.center = CGPointMake(self.view.width * 0.5, self.view.height * 0.8);
    [self.collectionView addSubview:smallTextImageV];
    
}

// 当scorllVeiw减速完毕时调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    // 获取偏移量
    CGFloat offsetX = scrollView.contentOffset.x - self.preOffsetX;
    
    LZLog(@"-%f", self.preOffsetX);
    LZLog(@"--%f", scrollView.contentOffset.x);
    
    self.preOffsetX = scrollView.contentOffset.x;
    self.guide1ImageV.x += 2 * offsetX;
    
    [UIView animateWithDuration:0.5 animations:^{
        self.guide1ImageV.x -= offsetX;
    }];
    
    LZLog(@"--offset%f", offsetX);
}

#pragma mark <UICollectionViewDataSource>

// 总共有多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

// 每组多少行
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    LZNewFeatureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide%ldBackground568h",indexPath.item + 1]];
    
    return cell;
}


@end
