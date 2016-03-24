//
//  NewsCell.h
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "BaseCell.h"

@interface NewsCell : BaseCell
@property (nonatomic, strong) UIImageView *imageV;
@property (nonatomic, strong) UILabel *titleLabel;
@end
