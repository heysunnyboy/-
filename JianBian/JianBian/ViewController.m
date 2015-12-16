//
//  ViewController.m
//  JianBian
//
//  Created by sunny on 15/12/16.
//  Copyright © 2015年 maja. All rights reserved.
//

#import "ViewController.h"
#import "JianBianTableViewCell.h"
@interface ViewController ()
@property(strong,nonatomic) UITableView *table;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _table = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _table.delegate = self;
    _table.dataSource = self;
    [self.view addSubview:_table];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView registerNib:[UINib nibWithNibName:@"JianBianTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    JianBianTableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    [cell setJianBian: (indexPath.row+1)*0.2];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 68;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
