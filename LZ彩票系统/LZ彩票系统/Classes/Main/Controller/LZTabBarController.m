//
//  LZTabBarController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZTabBarController.h"
#import "LZHallViewController.h"
#import "LZArenaViewController.h"
#import "LZDiscoverViewController.h"
#import "LZHistoryViewController.h"
#import "LZMyLotteryViewController.h"
#import "LZTabBar.h"
#import "LZNavigationController.h"
#import "LZArenaNavigationController.h"

@interface LZTabBarController () // <LZTabBarDelegate>

/** 存放tabbaritem的可变数组*/
@property (nonatomic, strong) NSMutableArray *itemArray;
@end

@implementation LZTabBarController

#pragma mark -懒加载数据
- (NSMutableArray *)itemArray
{
    if (_itemArray == nil) {
        _itemArray = [NSMutableArray array];
    }
    return _itemArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加所有的子子控制器
    [self addAllChildVC];
    
    // 自定义自己的tabbar
    LZTabBar *tabBar = [[LZTabBar alloc] init];
    tabBar.pBlock = ^ (NSInteger index) {
        self.selectedIndex = index;
    };
    tabBar.itemArray = self.itemArray;
    // 设置尺寸
    tabBar.frame = self.tabBar.bounds;
    // 把自己创建的tabbar添加到系统的tabbar上面
    [self.tabBar addSubview:tabBar];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 在view将要显示的时候，删除系统的UIBarButton
    for (UIView *childVc in self.tabBar.subviews) {
        if (![childVc isKindOfClass:[LZTabBar class]]) {
            [childVc removeFromSuperview];
        }
    }
    
}

- (void)addAllChildVC
{
    // 添加子控制器
    LZHallViewController *hallVC = [[LZHallViewController alloc] init];
    [self addChildVC:hallVC title:@"购票大厅" image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"]];
    
    LZArenaViewController *arenaVC = [[LZArenaViewController alloc] init];
    [self addChildVC:arenaVC title:@"竞技场" image:[UIImage imageNamed:@"TabBar_Arena_new"] selImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"]];

    UIStoryboard *discoverboard = [UIStoryboard storyboardWithName:@"LZDiscover" bundle:nil];
    
    
    LZDiscoverViewController *discoverVC = [discoverboard instantiateInitialViewController];
    [self addChildVC:discoverVC title:@"发现" image:[UIImage imageNamed:@"TabBar_Discovery_new"] selImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]];

    
    LZHistoryViewController *histroyVC = [[LZHistoryViewController alloc] init];
    [self addChildVC:histroyVC title:@"开奖信息" image:[UIImage imageNamed:@"TabBar_History_new"] selImage:[UIImage imageNamed:@"TabBar_History_selected_new"]];

    LZMyLotteryViewController *myLotteryVC = [[LZMyLotteryViewController alloc] init];
    [self addChildVC:myLotteryVC title:@"我的彩票" image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"]];

}

- (void)addChildVC:(UIViewController *)childVC title:(NSString *)title image:(UIImage *)image selImage:(UIImage *)selImage
{
    childVC.title = title;
    childVC.tabBarItem.image = image;
    childVC.tabBarItem.selectedImage = selImage;
    
    [self.itemArray addObject:childVC.tabBarItem];
    
//    childVC.view.backgroundColor = LZRandomColor;
    
    // 判断
    if ([childVC isKindOfClass:[LZArenaViewController class]]) {
        LZArenaNavigationController *nav = [[LZArenaNavigationController alloc] initWithRootViewController:childVC];
        [self addChildViewController:nav];
    } else {
        LZNavigationController *nav = [[LZNavigationController alloc] initWithRootViewController:childVC];
        [self addChildViewController:nav];
    }
}

@end
