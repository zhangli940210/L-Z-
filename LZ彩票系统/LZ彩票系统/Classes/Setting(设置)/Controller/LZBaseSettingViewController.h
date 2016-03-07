
#import <UIKit/UIKit.h>
#import "LZSettingRowItem.h"
#import "LZSettingGroupItem.h"
#import "LZArrowItem.h"
#import "LZSwitchItem.h"
#import "LZSettingCell.h"

@interface LZBaseSettingViewController : UITableViewController

// 总共有多少组,每个元素是组模型
@property (nonatomic ,strong) NSMutableArray *groupArray;

@end
