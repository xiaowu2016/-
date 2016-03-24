//
//  MusicCell.h
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "BaseCell.h"

@interface MusicCell : BaseCell
@property (nonatomic, strong) UIImageView *imageV;
@property (nonatomic, strong) UILabel *songNameLabel;
@property (nonatomic, strong) UILabel *singerLabel;
@end
