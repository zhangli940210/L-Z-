//
//  LZMyLotteryViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/3/4.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZMyLotteryViewController.h"

@interface LZMyLotteryViewController ()

/** 登录按钮*/
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;


@end

@implementation LZMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 拿到图片
    UIImage *image = [UIImage imageNamed:@"RedButton"];
    // 拉伸图片之后得到新图片
    UIImage *newImage = [image stretchableImageWithLeftCapWidth:image.size.width *0.5 topCapHeight:image.size.height * 0.5];
    
    [self.loginBtn setBackgroundImage:newImage forState:UIControlStateNormal];
    
    
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:@"客服" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    // 设置尺寸
    [btn sizeToFit];
    
    [btn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    
    // 设置字体
    NSMutableDictionary *textAtt = [NSMutableDictionary dictionary];
    textAtt[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    // 设置图片
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriImageName:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(settingClick)];
    
}

- (void)leftClick {
//    LZLog(@"leftClick");
}

- (void)settingClick {
//    LZLog(@"settingClick");
}

@end
