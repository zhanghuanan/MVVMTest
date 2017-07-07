//
//  ViewController.m
//  MVVM尝试
//
//  Created by 钧泰科技 on 2017/7/7.
//  Copyright © 2017年 钧泰科技. All rights reserved.
//

#import "ViewController.h"
#import "HNMovieTableViewCell.h"
#import "HNMovieModel.h"
#import "HNMovieModelView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSString *identi;
    NSArray *modelArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"MVVM尝试";
    identi = @"HNMovieCell";
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate = self;
    tableview.dataSource = self;
    tableview.rowHeight = 60;
    [self.view addSubview:tableview];
    [tableview registerClass:[HNMovieTableViewCell class] forCellReuseIdentifier:identi];
    
    HNMovieModelView *model = [[HNMovieModelView alloc] init];
    model.returnBlock = ^(id returnValue) {
        //在block中返回数据，刷新tabelview
        modelArr = returnValue;
        [tableview reloadData];
    };
    model.errorBlock = ^(id errorCode) {
      //返回错误信息
    };
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return modelArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HNMovieTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identi];
    
    //把model赋值给cell
    cell.model = [modelArr objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HNMovieModelView *movieModel = [[HNMovieModelView alloc] init];
    //把点击事件需要的model传递过去
    [movieModel movieDetailWithPulicModel:[modelArr objectAtIndex:indexPath.row] withViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
