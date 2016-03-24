//
//  MusicCell.m
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "MusicCell.h"
#import "Music.h"

@implementation MusicCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 55, 55)];
        [self.contentView addSubview:self.imageV];
        
        self.songNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(120, 10, 70, 35)];
        [self.contentView addSubview:self.songNameLabel];
        
        self.singerLabel = [[UILabel alloc]initWithFrame:CGRectMake(120, 90, 70, 30)];
        
        self.singerLabel.backgroundColor=[UIColor cyanColor];
        [self.contentView addSubview:self.singerLabel];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.imageV .frame= CGRectMake(10, 10, 55, 55);
    
    
    self.songNameLabel.frame = CGRectMake(120, 10, 70, 35);
    
    
    self.singerLabel.frame = CGRectMake(120, 90, 70, 30);
    
    
}
- (void)setBaseModel:(BaseModel *)baseModel
{
    Music *model = (Music *)baseModel;
    self.imageV.image =[UIImage imageNamed:model.picUrl];
    self.songNameLabel.text = model.name;
    self.singerLabel.text = model.singer;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
