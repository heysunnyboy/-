//
//  JianBianTableViewCell.h
//  JianBian
//
//  Created by sunny on 15/12/16.
//  Copyright © 2015年 maja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JianBianTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *view;
-(void)setJianBian:(float)value;
@end
