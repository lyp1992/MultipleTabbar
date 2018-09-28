//
//  YPSecondTabBarController.m
//  一个app嵌套多个tabbar
//
//  Created by 赖永鹏 on 2017/2/9.
//  Copyright © 2017年 赖永鹏. All rights reserved.
//

#import "YPSecondTabBarController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "MainNavViewController.h"

@interface YPSecondTabBarController ()

@end

@implementation YPSecondTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self addChildVC:[[FourViewController alloc] init] withTitle:@"第四个"];
    [self addChildVC:[[FiveViewController alloc] init] withTitle:@"第五个"];
    
    
}

-(void)addChildVC:(UIViewController *)VC withTitle:(NSString *)title{
    
    VC.title = title;
    MainNavViewController *mainVC = [[MainNavViewController alloc]initWithRootViewController:VC];
    
    [self addChildViewController:mainVC];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
}



@end
