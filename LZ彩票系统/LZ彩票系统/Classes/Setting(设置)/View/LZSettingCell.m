
#import "LZSettingCell.h"
#import "LZSettingRowItem.h"
#import "LZArrowItem.h"
#import "LZSwitchItem.h"

@implementation LZSettingCell


//创建一个cell
+ (LZSettingCell *)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style{
    
    static NSString *ID = @"settingCell";
    LZSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[LZSettingCell alloc] initWithStyle:style reuseIdentifier:ID];
    }
    return cell;
}


- (void)setRowItem:(LZSettingRowItem *)rowItem {
    _rowItem = rowItem;
    
    //设置数据
    [self setData:rowItem];
   //设置辅助视图
    [self setAcc:rowItem];
}

//设置数据
- (void)setData:(LZSettingRowItem *)rowItem {
    self.imageView.image = rowItem.image;
    self.textLabel.text = rowItem.title;
    self.detailTextLabel.text = rowItem.detailTitle;
}

//设置辅助视图
- (void)setAcc:(LZSettingRowItem *)rowItem {
    
    //设置辅助视图
    if ([rowItem isKindOfClass:[LZArrowItem class]]) {
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }else if([rowItem isKindOfClass:[LZSwitchItem class]]) {
        self.accessoryView = [[UISwitch alloc] init];
    }else {
        self.accessoryView =  nil;
    }
}



@end
