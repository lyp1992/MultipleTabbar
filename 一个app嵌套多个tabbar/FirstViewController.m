//
//  FirstViewController.m
//  一个app嵌套多个tabbar
//
//  Created by 赖永鹏 on 2017/2/9.
//  Copyright © 2017年 赖永鹏. All rights reserved.
//

#import "FirstViewController.h"
#import "YPSecondTabBarController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:NO];
    [self.tabBarController.tabBar setHidden:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *but = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    [but setTitle:@"跳转到另一个tabbar" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(senderClick:) forControlEvents:UIControlEventTouchUpInside];
    but.backgroundColor = [UIColor grayColor];
    [self.view addSubview:but];
}

-(void)senderClick:(UIButton *)sender{

    //隐藏现在的tabbar和navi
    [self.navigationController.navigationBar setHidden:YES];
    [self.tabBarController.tabBar setHidden:YES];
    YPSecondTabBarController *secTab = [[YPSecondTabBarController alloc]init];
    [self.navigationController pushViewController:secTab animated:YES];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
