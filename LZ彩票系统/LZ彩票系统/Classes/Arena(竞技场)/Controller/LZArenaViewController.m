//
//  LZArenaViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZArenaViewController.h"

@interface LZArenaViewController ()

@end

@implementation LZArenaViewController

// 自定义view
- (void)loadView
{
    // 创建imageView对象
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithOriImageName:@"NLArenaBackground"]];
    // 设置可以和用户交互
    imageView.userInteractionEnabled = YES;
    // 赋值给控制器的view
    self.view = imageView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建UISegmentedControl对象
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"路飞",@"索隆"]];
    
    // 设置背景色
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    // 默认选中第1个
    seg.selectedSegmentIndex = 0;
    
//     设置选中字体颜色
    NSMutableDictionary *textAtt = [NSMutableDictionary dictionary];
    textAtt[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [seg setTitleTextAttributes:textAtt forState:UIControlStateSelected];
    
    // 设置主题颜色---边框颜色，文字颜色
    [seg setTintColor:LZColor(0, 158, 161)];
    
    // 赋值给titleView
    self.navigationItem.titleView = seg;
}



@end
