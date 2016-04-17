//
//  LZArenaViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZArenaViewController.h"
#import "LZLuFeiViewController.h"
#import "LZSuoLongViewController.h"

@interface LZArenaViewController ()

/** 正在显示的控制器*/
@property (nonatomic, weak) UIViewController *showingVC;

@end

@implementation LZArenaViewController

// 自定义view
//- (void)loadView
//{
//    // 创建imageView对象
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithOriImageName:@"NLArenaBackground"]];
//    // 设置可以和用户交互
//    imageView.userInteractionEnabled = YES;
//    // 赋值给控制器的view
//    self.view = imageView;
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    //从ios7开始当scrollView在导航控制器,会自动调用边距64
    self.automaticallyAdjustsScrollViewInsets = NO;
    // 添加子控制器
    [self addChildViewController:[[LZLuFeiViewController alloc] init]];
    [self addChildViewController:[[LZSuoLongViewController alloc] init]];
    
    // 添加子控件
    [self setup];
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:0 target:self action:@selector(setting)];
}

- (void)setting
{
//    LZSettingViewController *settingVC = [[LZSettingViewController alloc] init];
//    [self.navigationController pushViewController:settingVC animated:YES];
}

- (void)setup
{
    // 创建UISegmentedControl对象
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"路飞",@"索隆"]];
    
    // 设置背景色
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    // 默认选中第1个
    seg.selectedSegmentIndex = 0;
    
    // 设置选中字体颜色
    NSMutableDictionary *textAtt = [NSMutableDictionary dictionary];
    textAtt[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [seg setTitleTextAttributes:textAtt forState:UIControlStateSelected];
    
    // 设置主题颜色---边框颜色，文字颜色
    [seg setTintColor:LZColor(0, 158, 161)];
    
    // 添加监听事件
    [seg addTarget:self action:@selector(chooseController:) forControlEvents:UIControlEventValueChanged];
    // 默认调用一次chooseController方法
    [self chooseController:seg];
    
    // 赋值给titleView
    self.navigationItem.titleView = seg;
}

- (void)chooseController: (UISegmentedControl *)seg
{
    // 1.移除正在显示的view
    [self.showingVC.view removeFromSuperview];
    // 2.判断
    if (seg.selectedSegmentIndex == 0) {
        // 2.添加要显示的view
        // 2.1设置好要显示的控制器
        self.showingVC = self.childViewControllers[0];
        
    } else {
        self.showingVC = self.childViewControllers[1];
    }
    
    self.showingVC.view.frame = self.view.bounds;
    // 2.2添加要显示的控制器的view
    [self.view addSubview:self.showingVC.view];
}

@end
