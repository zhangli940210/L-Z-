
#import "LZBaseSettingViewController.h"

@interface LZBaseSettingViewController ()

@end

@implementation LZBaseSettingViewController


- (NSMutableArray *)groupArray {
    if (_groupArray == nil) {
        _groupArray = [NSMutableArray array];
    }
    return _groupArray;
}

//初始化时为组样式
- (instancetype)init
{
    return  [super initWithStyle:UITableViewStyleGrouped];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groupArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //取出当前是第几组
    LZSettingGroupItem *groupItem  = self.groupArray[section];
    
    return groupItem.rowArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //创建 Cell
    LZSettingCell *cell = [LZSettingCell cellWithTableView:tableView style:UITableViewCellStyleDefault];
    //取出当前是第几组
    LZSettingGroupItem *groupItem  = self.groupArray[indexPath.section];
    LZSettingRowItem *rowItem = groupItem.rowArray[indexPath.row];
    //给Cell赋值模型
    cell.rowItem = rowItem;
    return cell;
}

//点击每一行Cell处理
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //取出当前是第几组
    LZSettingGroupItem *groupItem  = self.groupArray[indexPath.section];
    LZSettingRowItem *rowItem = groupItem.rowArray[indexPath.row];
    
    if(rowItem.myTask) {
        //执行block
        rowItem.myTask(indexPath);
        return;
    }
    
    if ([rowItem isKindOfClass:[LZArrowItem class]]) {
        //判断有没有要跳转的控制器
        LZArrowItem *arrowItem = (LZArrowItem *)rowItem;

        if (arrowItem.desClass) {
            UIViewController *vc= [[arrowItem.desClass alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
    
}


//每一组的头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    //取出当前是第几组
    LZSettingGroupItem *groupItem  = self.groupArray[section];
    return groupItem.headerT;
    
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    LZSettingGroupItem *groupItem  = self.groupArray[section];
    return groupItem.footerT;
    
}


@end
