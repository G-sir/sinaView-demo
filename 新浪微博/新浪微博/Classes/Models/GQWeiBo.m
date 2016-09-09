//
//  GQWeiBo.m
//  新浪微博
//
//  Created by GQ on 16/7/18.
//  Copyright © 2016年 GQ. All rights reserved.
//

#import "GQWeiBo.h"

@implementation GQWeiBo

/**
 *  对象初始化方法,对象方法
 *
 *  @param dict 传入字典数据
 *
 *  @return 返回当前类的对象
 */
- (instancetype)initWithDict:(NSDictionary *)dict{
    
    //完成初始化
    self = [super init];
    
    //判断对象是否存在
    if (self) {
        
        //使用KVC的方式设置数据
        [self setValuesForKeysWithDictionary:dict];
    }
    
    //返回当前对象
    return self;
    
}

/**
 *  对象初始化方法,类方法
 *
 *  @param dict 传入字典数据
 *
 *  @return 返回当前类的对象
 */
+ (instancetype)weiBoWithDict:(NSDictionary *)dict{
    
    //调用上方的方法完成初始化
    return [[self alloc]initWithDict:dict];
}

/**
 *  根据plist文件返回一个模型数组
 *
 *  @param fileName 传入plist文件的名字
 *
 *  @return 模型数组
 */
+ (NSArray *)weiBoWithPlistFileName:(NSString *)fileName{
    
    //1. 根据文件名字获取一个字典数据
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:fileName ofType:@"plist"]];
    
    //2. 定义可变数组
    NSMutableArray *nmArray = [NSMutableArray array];
    
    //3. 遍历字典数组
    for (NSDictionary *dict in array) {
        //4. 字典转模型
        [nmArray addObject:[[self alloc]initWithDict:dict]];
    }
    
    //5. 返回模型数组
    return nmArray;
    
    
}

@end
