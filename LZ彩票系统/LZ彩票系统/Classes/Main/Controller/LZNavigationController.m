//
//  LZNavigationController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZNavigationController.h"

@interface LZNavigationController ()

@end

@implementation LZNavigationController

// 当前类第一次使用，或者子类第一次使用的时候调用
+ (void)initialize
{
    // 获取当前类下面的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    // 设置导航条的背景
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
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
