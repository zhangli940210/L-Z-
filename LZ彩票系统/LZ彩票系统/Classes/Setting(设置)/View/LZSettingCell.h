
#import <UIKit/UIKit.h>

@class LZSettingRowItem;
@interface LZSettingCell : UITableViewCell

//创建一个cell
+ (LZSettingCell *)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style;

@property (nonatomic ,strong) LZSettingRowItem *rowItem;

@end
