//
//  JianBianTableViewCell.m
//  JianBian
//
//  Created by sunny on 15/12/16.
//  Copyright © 2015年 maja. All rights reserved.
//

#import "JianBianTableViewCell.h"

@implementation JianBianTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setJianBian:(float)value
{
    CAGradientLayer *newShadow = [[CAGradientLayer alloc] init];
    
    CGRect newShadowFrame = CGRectMake(([UIScreen mainScreen].bounds.size.width-40)/2, (68-40)/2, 40, 40);
    newShadow.frame = newShadowFrame;
    //添加渐变的颜色组合
    newShadow.colors = [NSArray arrayWithObjects:(id)[UIColor redColor].CGColor,(id)[UIColor greenColor].CGColor,nil];
    _view.alpha =value;
    [_view.layer addSublayer:newShadow];
}
-(UIColor *)getCurrentBeforeColor:(UIColor *)beforeColor afterColor:(UIColor*)afterColor percent:(CGFloat)percent{
    CGFloat R, G, B;
    int numComponents = CGColorGetNumberOfComponents([beforeColor CGColor]);
    
    if (numComponents == 4)
    {
        const CGFloat *components = CGColorGetComponents([beforeColor CGColor]);
        R = components[0];
        G = components[1];
        B = components[2];
    }
    CGFloat R2, G2, B2;
    int numComponents2 = CGColorGetNumberOfComponents([afterColor CGColor]);
    
    if (numComponents2 == 4)
    {
        const CGFloat *components2 = CGColorGetComponents([afterColor CGColor]);
        R2 = components2[0];
        G2 = components2[1];
        B2 = components2[2];
    }
    //    CGFloat currentR =
    return [UIColor colorWithRed:R+(R2-R)*percent green:G+(G2-G)*percent blue:B+(B2-B)*percent alpha:1.0];
}
@end
