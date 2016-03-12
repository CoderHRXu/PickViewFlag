//
//  FlagItem.m
//  加载国旗第四遍
//
//  Created by haoran on 16/2/27.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "FlagItem.h"

@implementation FlagItem
+(instancetype)flagItemWith:(NSDictionary *)dict
{
    FlagItem *item = [[FlagItem alloc]init];
    [item setValuesForKeysWithDictionary:dict];
    return item;
}
-(void)setIcon:(UIImage *)icon
{
    NSString* temp = (NSString *)icon;
    _icon = [UIImage imageNamed:temp];
    
}
@end
