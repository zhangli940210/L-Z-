//
//  LZSaveTool.m
//  LZ彩票系统
//
//  Created by apple on 16/3/7.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZSaveTool.h"

@implementation LZSaveTool

// 根据key值从偏好设置中获取指定的值
+ (id)objectForKey:(NSString *)key;
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

// 根据指定的key,存储指定的值
+ (void)setObject:(id)object forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
}

@end
