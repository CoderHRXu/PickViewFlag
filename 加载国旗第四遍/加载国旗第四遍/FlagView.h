//
//  FlagView.h
//  加载国旗第四遍
//
//  Created by haoran on 16/2/27.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FlagItem;
@interface FlagView : UIView
@property (nonatomic, strong)  FlagItem * item;
+(instancetype)flagView;
@end
