//
//  LZSuoLongViewController.m
//  LZ彩票系统
//
//  Created by apple on 16/4/16.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "LZSuoLongViewController.h"

@interface LZSuoLongViewController ()

@end

@implementation LZSuoLongViewController

static NSString * const ID = @"SuoLong";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 注册方法
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 30;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID ];
    
    cell.textLabel.text = [NSString stringWithFormat:@"==%zd", indexPath.row];
    
    return cell;
}



@end
