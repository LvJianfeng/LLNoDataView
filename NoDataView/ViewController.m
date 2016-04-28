//
//  ViewController.m
//  NoDataView
//
//  Created by LvJianfeng on 16/4/18.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//

#import "ViewController.h"
#import "LLNoDataView.h"

@interface ViewController () <LLNoDataViewTouchDelegate>
@property (strong, nonatomic) NSArray *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //没有数据
    LLNoDataView *dataView = [[LLNoDataView alloc] initNoDataWithFrame:self.tableView.bounds description:@"没有数据" canTouch:YES];
    dataView.delegate = self;
    self.tableView.tableHeaderView = dataView;
    
    //实例一次，再次修改提示文本信息
    dataView.tipLabel.text = @"没有搜索到\"LLNoDataView\"的数据";
    
//    //没有网络
//    LLNoDataView *dataView = [[LLNoDataView alloc] initNoInternetWithFrame:self.tableView.bounds description:@"网络连接失败" canTouch:YES];
//    dataView.delegate = self;
//    self.tableView.tableHeaderView = dataView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{return 1;}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{return self.data.count;}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TestCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld行",indexPath.row];
    return cell;
}

- (NSArray *)data{
    if (!_data) {
        _data = [[NSArray alloc] init];//WithObjects:@"",@"", nil
    }
    return _data;
}

- (void)didTouchLLNoDataView{
    self.data = @[@"",@"",@"",@"",@"",@"",@"",@""];
    [self.tableView reloadData];
    self.tableView.tableHeaderView = nil;
}
@end
