//
//  HNMovieTableViewCell.m
//  MVVM尝试
//
//  Created by 钧泰科技 on 2017/7/7.
//  Copyright © 2017年 钧泰科技. All rights reserved.
//

#import "HNMovieTableViewCell.h"

@implementation HNMovieTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //进行cell的布局
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 10, 40, 60)];
        [self.contentView addSubview:_imgView];
        _name = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, 200, 20)];
        [self.contentView addSubview:_name];
        
        _yearLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 50, 100, 20)];
        _yearLabel.textColor = [UIColor lightGrayColor];
        _yearLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_yearLabel];
    }
    return self;
}
- (void)setModel:(HNMovieModel *)model
{
    //赋值
    _model = model;
    _name.text = _model.movieName;
    _yearLabel.text = _model.year;
//    _imgView setImagew
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
