//
//  LZNavigationController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/5.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZNavigationController.h"

@interface LZNavigationController () <UINavigationControllerDelegate>

/** 保存代理*/
@property (nonatomic ,strong) id popDelegate;

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
    
//    LZLog(@"- %@", self.interactivePopGestureRecognizer);
    
    // 保存侧滑手势的代理
    self.popDelegate = self.interactivePopGestureRecognizer.delegate;
    
    self.delegate = self;
}

#pragma mark - UINavigationControllerDelegate方法
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
     // 判断当前显示的控制器是否为根控制器.
    if (self.viewControllers.count == 1) {
        // 如果是根控制器,设回手势代理
        self.interactivePopGestureRecognizer.delegate = self.popDelegate;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count != 0) { // 不是根控制器
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriImageName:@"NavBack"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        
        // 重写了系统返回,那么系统的侧滑返回功能就会失效，因为它会通知代理，让代理调用某个方法
        // 使侧滑功能失效，那么处理方法就是把代理干死
        self.interactivePopGestureRecognizer.delegate = nil;
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

@end
