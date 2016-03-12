//
//  FlagView.m
//  加载国旗第四遍
//
//  Created by haoran on 16/2/27.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "FlagView.h"
#import "FlagItem.h"
@interface FlagView()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
@implementation FlagView

-(void)setItem:(FlagItem *)item
{
    _item = item;
    self.nameLabel.text = item.name;
    self.imageView.image = item.icon;
    
    
}


+(instancetype)flagView
{
    return [[NSBundle mainBundle]loadNibNamed:@"FlagView" owner:nil options:nil][0];
}


@end
