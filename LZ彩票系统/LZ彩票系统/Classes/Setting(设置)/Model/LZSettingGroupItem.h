//  组模型

#import <Foundation/Foundation.h>

@interface LZSettingGroupItem : NSObject

//共有多少行
@property (nonatomic ,strong) NSArray *rowArray;
//头部标题
@property (nonatomic ,strong) NSString *headerT;
//尾部标题
@property (nonatomic ,strong) NSString *footerT;


+ (instancetype)settingItemWithRowArray:(NSArray *)array;


@end
