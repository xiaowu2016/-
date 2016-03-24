//
//  News.h
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "BaseModel.h"

@interface News : BaseModel
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imgsrc;
@end
