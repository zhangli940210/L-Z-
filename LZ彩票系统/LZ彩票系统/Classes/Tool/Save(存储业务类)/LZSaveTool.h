//
//  LZSaveTool.h
//  LZ彩票系统
//
//  Created by apple on 16/3/7.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZSaveTool : NSObject

// 根据key值从偏好设置中获取指定的值
+ (id)objectForKey:(NSString *)key;

// 根据指定的key,存储指定的值
+ (void)setObject:(id)object forKey:(NSString *)key;

@end
