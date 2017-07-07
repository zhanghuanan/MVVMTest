//
//  HNMovieModelView.m
//  MVVM尝试
//
//  Created by 钧泰科技 on 2017/7/7.
//  Copyright © 2017年 钧泰科技. All rights reserved.
//

#import "HNMovieModelView.h"


@implementation HNMovieModelView
- (void)getMovieData
{
    //网络请求
    //.......
    HNMovieModel *model = [[HNMovieModel alloc] init];
    //把数据循环放进model中
    _returnBlock(model);
    
    //失败返回错误信息
    //_errorBlock(code);
}
- (void)movieDetailWithPulicModel:(HNMovieModel *)model withViewController:(UIViewController *)superController
{
    //点击cell要做的操作
}
@end
