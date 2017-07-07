//
//  HNMovieModel.h
//  MVVM尝试
//
//  Created by 钧泰科技 on 2017/7/7.
//  Copyright © 2017年 钧泰科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HNMovieModel : NSObject
@property (nonatomic, strong) NSString *movieName,*year,*detailUrl;
@property (nonatomic, strong) NSURL *imageUrl;
@end
