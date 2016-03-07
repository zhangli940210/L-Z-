//
//  LZRootTool.m
//  LZ彩票系统
//
//  Created by apple on 16/3/7.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZRootTool.h"
#import "LZSaveTool.h"
#import "LZTabBarController.h"
#import "LZNewFeatureViewController.h"

#define LZCurVersion @"CurVersion"

@implementation LZRootTool

//选择根控制器.
+ (UIViewController *)chooseRootVC
{
    //获取之前保存的版本号
    NSString *preV = [LZSaveTool objectForKey:LZCurVersion];
    //获取当前软件的版本号
    NSString *curV =  [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    //判断当前版本是否与之前的版本相同
    if ([curV isEqualToString:preV]) {
        // 相同,跳到程序的主框架
        //2.设置窗口的根控制器
        LZTabBarController *tabVc = [[LZTabBarController alloc] init];
        return tabVc;
        
    }else {
        //不同,跳到新特性,保存当前的版本号
        //创建CollectionView
        LZNewFeatureViewController *collectVc = [[LZNewFeatureViewController alloc] init];
        // 将新的数据存入沙盒
        [LZSaveTool setObject:curV forKey:LZCurVersion];
        return collectVc;
    }
}
@end
