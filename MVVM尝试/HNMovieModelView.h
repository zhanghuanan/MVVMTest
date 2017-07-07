//
//  HNMovieModelView.h
//  MVVM尝试
//
//  Created by 钧泰科技 on 2017/7/7.
//  Copyright © 2017年 钧泰科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HNMovieModel.h"
#import <UIKit/UIKit.h>

typedef void(^ReturnValueBlock)(id returnValue);
typedef void(^ErrorCodeBlock)(id errorCode);

@interface HNMovieModelView : NSObject
@property (nonatomic, copy)ReturnValueBlock returnBlock;
@property (nonatomic, copy)ErrorCodeBlock errorBlock;
- (void)getMovieData;
- (void)movieDetailWithPulicModel:(HNMovieModel *)model withViewController:(UIViewController *)superController;
@end
