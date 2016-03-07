//  行模型

#import <Foundation/Foundation.h>

// 定义一个新的block类型
typedef void(^pBlock)(NSIndexPath *);

@interface LZSettingRowItem : NSObject
/** 图标*/
@property (nonatomic ,strong) UIImage *image;
/** 标题*/
@property (nonatomic ,strong) NSString *title;
/** 子标题*/
@property (nonatomic , strong) NSString *detailTitle;
/** 定义一个block变量，保存一段代码*/
@property (nonatomic, copy) pBlock myTask;
/** 快速创建模型*/
+ (instancetype)settingRowItemWithImage:(UIImage *)image title:(NSString *)title;

@end
