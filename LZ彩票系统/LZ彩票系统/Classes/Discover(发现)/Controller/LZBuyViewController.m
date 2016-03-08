//
//  LZBuyViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/6.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZBuyViewController.h"
#import "LZTitleButton.h"

@interface LZBuyViewController ()

@end

@implementation LZBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建按钮对象
    LZTitleButton *btn = [[LZTitleButton alloc] init];
    
    // 添加到
    self.navigationItem.titleView = btn;
}



@end
