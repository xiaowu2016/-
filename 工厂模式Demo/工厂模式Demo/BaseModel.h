//
//  BaseModel.h
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

//创建一个便利构造器
+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
