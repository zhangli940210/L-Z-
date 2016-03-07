
#import "LZSettingRowItem.h"

@implementation LZSettingRowItem

//快速创建模型
+ (instancetype)settingRowItemWithImage:(UIImage *)image title:(NSString *)title
{    
    LZSettingRowItem *item = [[self alloc] init];
    item.image = image;
    item.title = title;
    return item;
}

@end
