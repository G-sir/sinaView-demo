//
//  GQWeiBo.h
//  新浪微博
//
//  Created by GQ on 16/7/18.
//  Copyright © 2016年 GQ. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {

    IsVip_NO,
    IsVip_YES

}IsVip;



@interface GQWeiBo : NSObject

@property(nonatomic,copy) NSString *icon;
@property(nonatomic,copy) NSString *picture;
@property(nonatomic,copy) NSString *text;
@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) IsVip vip;


/**
 *  对象初始化方法,对象方法
 *
 *  @param dict 传入字典数据
 *
 *  @return 返回当前类的对象
 */
- (instancetype)initWithDict:(NSDictionary *)dict;

/**
 *  对象初始化方法,类方法
 *
 *  @param dict 传入字典数据
 *
 *  @return 返回当前类
 */
+(instancetype) weiBoWithDict:(NSDictionary *)dict;


/**
 *  根据plist文件返回一个模型数组
 *
 *  @param fileName 传入plist文件的名字
 *
 *  @return 模型数组
 */
+ (NSArray *)weiBoWithPlistFileName:(NSString *)fileName;

@end
