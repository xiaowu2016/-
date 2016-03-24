//
//  TableViewController.m
//  工厂模式Demo
//
//  Created by zhangchao on 16/3/24.
//  Copyright © 2016年 zhangchao. All rights reserved.
//

#import "TableViewController.h"
#import "BaseModel.h"   
#import "BaseCell.h"

@interface TableViewController ()
@property (nonatomic,strong) BaseModel *baseModel;
@property (nonatomic,strong) NSMutableArray *dataArray;
@end

@implementation TableViewController

- (NSMutableArray *)dataArray
{
    if(!_dataArray)
    {
        _dataArray = [NSMutableArray array];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
        NSArray *arr = [NSArray arrayWithContentsOfFile:path];
        
        for (NSDictionary *dic in arr) {
            BaseModel *model = [BaseModel initWithDictionary:dic];
            // 将不同子类创建出的model对象添加到我们的数组当中
            [_dataArray addObject:model];
        }
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 根据我们的indexPath.row获取我们对应的model
    BaseModel *baseModel = [self.dataArray objectAtIndex:indexPath.row];
    
    // 根据取出来的model获取其对应的类名
    NSString *modelName = [NSString stringWithUTF8String:object_getClassName(baseModel)];
    
    // 根据不同的唯一标识重用不同的cell
    BaseCell *cell = [tableView dequeueReusableCellWithIdentifier:modelName];
    
    // 如果cell不存在
    if (cell == nil) {
        // 根据我们每行提供的model创建出对应的cell
        // 根据不同需求生产不同的产品
        cell = [BaseCell initWithModel:baseModel];
        
    }
    // 赋值
    [cell setBaseModel:baseModel];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
