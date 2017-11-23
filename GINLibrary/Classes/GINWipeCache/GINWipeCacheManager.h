//
//  GINWipeCacheManager.h
//  grid
//
//  Created by detao on 16/12/04.
//  Copyright © 2016年 德稻全球创新网络（北京）有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kFileManager [NSFileManager defaultManager]
#define kCachePath NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject
#define kTopStackController [UIApplication sharedApplication].keyWindow.rootViewController

@interface GINWipeCacheManager : NSObject


/**
 缓存文件夹的大小
 */
@property (nonatomic,assign)CGFloat cacheSize;


/**
 清除缓存单例构造方法
 
 @return 返回一个清除缓存单例对象
 */
+ (instancetype)gin_sharedManager;


/**
 一键式清除缓存
 */
+ (void)gin_wipeCacheWithDefaultStyle;

/**
 计算单个文件的大小
 
 @param path 文件的路径
 @return 文件的大小(单位: Mb)
 */
- (CGFloat)gin_fileSizeAtPath:(NSString *)path;
@end
