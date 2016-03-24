//
//  BaseCell.m
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "BaseCell.h"
#import "BaseModel.h"

@implementation BaseCell


+ (instancetype)initWithModel:(BaseModel *)model
{
    //根据我们的OC函数获取我们的model类名并将其转化为OC字符串
    NSString *modelName = [NSString stringWithUTF8String:object_getClassName(model)];
    
    //使用model的类名拼接一个"Cell"来获取到我们的Cell类名
    NSString *cellName = [modelName stringByAppendingString:@"Cell"];
    
    //根据我们所提供的cellName来获取其对应的“cell子类”初始化一个cell对象返回给我们的父类对象
    
    //唯一标识符可以使用我们所提供的model来给予不同cell所对应的标识来重用。
    
    BaseCell *cell = [[NSClassFromString(cellName) alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:modelName];
    
    
    return cell;
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
