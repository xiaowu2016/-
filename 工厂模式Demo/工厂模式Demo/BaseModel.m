//
//  BaseModel.m
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "BaseModel.h"
#import "News.h"
#import "Images.h"
#import "Music.h"

@implementation BaseModel
// 根据字典内提供的数据分别创建出对应的model来获取数据
+ (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    // 先使用当前类（父类）创建出model对象
    BaseModel *model = nil;
    
    // 根据字典中key对应的数据初始化不同的子类对象并将其返回给我们的父类
    if ([dictionary[@"tag"] isEqualToString:@"news"]) {
        model = [[News alloc] init];
    } else if ([dictionary[@"tag"] isEqualToString:@"images"]){
        model = [[Images alloc] init];
    } else if([dictionary[@"tag"] isEqualToString:@"music"]){
        model = [[Music alloc] init];
    }
    [model setValuesForKeysWithDictionary:dictionary];
    return model;
}

@end
