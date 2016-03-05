//
//  LZArenaNavigationController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZArenaNavigationController.h"

@interface LZArenaNavigationController ()


@end

@implementation LZArenaNavigationController

// 当前类第一次使用，或者是子类第一次使用的时候调用
+ (void)initialize
{
    // 获取当前类下面的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    [bar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    // 设置富文本
    NSMutableDictionary *textAtt = [NSMutableDictionary dictionary];
    textAtt[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    textAtt[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [bar setTitleTextAttributes:textAtt];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

@end
