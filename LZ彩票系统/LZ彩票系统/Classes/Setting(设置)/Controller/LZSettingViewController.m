//
//  LZSettingViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/7.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZSettingViewController.h"
#import "LZScoreViewController.h"

@interface LZSettingViewController ()

@end

@implementation LZSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置标题
    self.title = @"设置";
    //添加3组
    [self addGroup0];
    [self addGroup1];
    [self addGroup2];
}

// 第一组
- (void)addGroup0
{
    LZSettingRowItem *item1 = [LZSettingRowItem settingRowItemWithImage:[UIImage imageNamed:@"handShake"] title:@"路飞"];
    
    // 创建一个行数组
    NSArray *rowArray = @[item1];
    // 创建一个组模型
    LZSettingGroupItem *groupItem = [LZSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT = @"第一组头部";
    groupItem.footerT = @"第一组尾部";
    
    __weak  typeof(self) weakSelf = self;
    item1.myTask = ^ (NSIndexPath *indexPath) {
        LZScoreViewController *scoreVC = [[LZScoreViewController alloc] init];
        [weakSelf.navigationController pushViewController:scoreVC animated:YES];
    };
    
    [self.groupArray addObject:groupItem];
    
}
// 第二组
- (void)addGroup1
{
    LZArrowItem *item1 = [LZArrowItem settingRowItemWithImage:[UIImage imageNamed:@"lamp"] title:@"索隆1"];
    LZArrowItem *item2 = [LZArrowItem settingRowItemWithImage:[UIImage imageNamed:@"lamp"] title:@"索隆2"];
    
    item2.desClass = [LZScoreViewController class];
    // 创建一个行数组,装的是行模型
    NSArray *rowArray = @[item1, item2];
    // 创建一个组模型
    LZSettingGroupItem *groupItem = [LZSettingGroupItem settingItemWithRowArray:rowArray];
    
    [self.groupArray addObject:groupItem];
}
// 第三组
- (void)addGroup2
{
    LZSwitchItem *item1 = [LZSwitchItem settingRowItemWithImage:[UIImage imageNamed:@"more_historyorder"] title:@"山治"];
    // 创建一个行数组
    NSArray *rowArray = @[item1];
    // 创建一个组模型
    LZSettingGroupItem *groupItem = [LZSettingGroupItem settingItemWithRowArray:rowArray];
    
    [self.groupArray addObject:groupItem];
}

@end
