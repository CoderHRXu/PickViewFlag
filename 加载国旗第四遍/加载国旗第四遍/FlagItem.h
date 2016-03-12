//
//  FlagItem.h
//  加载国旗第四遍
//
//  Created by haoran on 16/2/27.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlagItem : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *icon;

+(instancetype)flagItemWith:(NSDictionary *)dict;
@end
