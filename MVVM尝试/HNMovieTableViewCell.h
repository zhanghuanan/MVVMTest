//
//  HNMovieTableViewCell.h
//  MVVM尝试
//
//  Created by 钧泰科技 on 2017/7/7.
//  Copyright © 2017年 钧泰科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HNMovieModel.h"

@interface HNMovieTableViewCell : UITableViewCell
@property (nonatomic, strong) HNMovieModel *model;
@end

@interface HNMovieTableViewCell ()
@property (nonatomic, strong) UILabel *name,*yearLabel;
@property (nonatomic, strong) UIImageView *imgView;
@end
