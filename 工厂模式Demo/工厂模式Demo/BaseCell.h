//
//  BaseCell.h
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BaseModel;

@interface BaseCell : UITableViewCell
// 在父类中申明出一个BaseModel对象，在其子类里重写set方法，在set方法内部去做赋值操作
@property (nonatomic, strong) BaseModel *baseModel;

// 根据不同类型的model创建出来不同的cell
+ (instancetype)initWithModel:(BaseModel *)model;
@end
