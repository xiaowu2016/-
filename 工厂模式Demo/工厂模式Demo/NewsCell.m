//
//  NewsCell.m
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "NewsCell.h"
#import "News.h"

#define kWinth self.contentView.frame.size.width
#define kHeight self.contentView.frame.size.height

@implementation NewsCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, kWinth - 20, 50)];
        self.imageV.backgroundColor=[UIColor redColor];
        [self.contentView addSubview:self.imageV];
        
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 85, kWinth - 20, 40)];
        self.titleLabel.backgroundColor=[UIColor redColor];
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageV .frame= CGRectMake(5, 5, kWinth - 20, 50);
    self.titleLabel .frame= CGRectMake(10, 85, kWinth*0.9, 40);
    
}

- (void)setBaseModel:(BaseModel *)baseModel
{
    News *model = (News *)baseModel;
    self.titleLabel.text = model.title;
    self.imageV .image =[UIImage imageNamed:model.imgsrc];;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
