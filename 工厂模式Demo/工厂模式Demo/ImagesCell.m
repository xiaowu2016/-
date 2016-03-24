//
//  ImagesCell.m
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "ImagesCell.h"
#import "Images.h"

#define kWidth self.contentView.frame.size.width
#define kHeight self.contentView.frame.size.height

@implementation ImagesCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 0, (kWidth - 20) / 3, 80)];
        self.imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(10 +  (kWidth - 20) / 3, 0, (kWidth - 20) / 3, 80)];
        self.imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(10 + (kWidth - 20) / 3 * 2, 0, (kWidth - 20) / 3, 80)];
        [self.contentView addSubview:self.imageV1];
        [self.contentView addSubview:self.imageV2];
        [self.contentView addSubview:self.imageV3];
        self.imageV1.backgroundColor=[UIColor blueColor];
        
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageV1.frame = CGRectMake(5, 0, (kWidth - 20) / 3, 80);
    self.imageV2.frame =CGRectMake(10 +  (kWidth - 20) / 3, 0, (kWidth - 20) / 3, 80);
    self.imageV3 .frame= CGRectMake(10 + (kWidth - 20) / 3 * 2, 0, (kWidth - 20) / 3, 80);
    
    
}

- (void)setBaseModel:(BaseModel *)baseModel
{
    Images *model = (Images *)baseModel;
    
    self.imageV1.image =[UIImage imageNamed:model.imgsrc1];
    
    self.imageV2.image =[UIImage imageNamed:model.imgsrc2];
    
    self.imageV3.image =[UIImage imageNamed:model.imgsrc3];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
