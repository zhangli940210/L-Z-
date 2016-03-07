
#import "LZSettingGroupItem.h"

@implementation LZSettingGroupItem

+ (instancetype)settingItemWithRowArray:(NSArray *)array {
    
    LZSettingGroupItem *groupItem = [[self alloc] init];
    groupItem.rowArray = array;
    return groupItem;
}

@end
