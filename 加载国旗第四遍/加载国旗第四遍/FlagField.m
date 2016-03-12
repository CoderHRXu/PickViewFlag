//
//  FlagField.m
//  加载国旗第四遍
//
//  Created by haoran on 16/2/27.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "FlagField.h"
#import "FlagItem.h"
#import "FlagView.h"
@interface FlagField ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic, strong) NSArray *flagArray;
@end
@implementation FlagField

//懒加载
-(NSArray *)flagArray
{
    if (_flagArray == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"flags.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        
        //字典转模型
        NSMutableArray * temp =[NSMutableArray array];
        for (NSDictionary *dict in array) {
            FlagItem *item = [FlagItem flagItemWith:dict];
            [temp addObject:item];
        }
        _flagArray = temp;
    }
    return _flagArray;
}
//通过xib方式创建
-(void)awakeFromNib
{
    [self setUp];
}
//通过代码创建
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}
//初始化方法
-(void)setUp
{
    //创建pickview
    UIPickerView *pickV = [[UIPickerView alloc]init];
    //设置代理方法
    pickV.dataSource = self;
    pickV.delegate = self;
    //设置输入View为pickview
    self.inputView = pickV;
}

#pragma mark -- UIPickerViewDataSource
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.flagArray.count;
}

#pragma maek -- UIPickerViewDelegate
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 100;
}
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    FlagView *flagView = [FlagView flagView];
    flagView.item = self.flagArray[row];
    return flagView;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    FlagItem *item = self.flagArray[row];
    self.text = item.name;
}
@end
