//
//  YPFristTabBarController.m
//  一个app嵌套多个tabbar
//
//  Created by 赖永鹏 on 2017/2/9.
//  Copyright © 2017年 赖永鹏. All rights reserved.
//

#import "YPFristTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "MainNavViewController.h"

@interface YPFristTabBarController ()

@end

@implementation YPFristTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
  
//    FirstViewController *firstVC = [[FirstViewController alloc]init];
//    firstVC.title = @"第一个";
//    MainNavViewController *mainVC = [[MainNavViewController alloc]initWithRootViewController:firstVC];
//    [self addChildViewController:mainVC];
    
    [self addChildVC:[[FirstViewController alloc] init] withTitle:@"第一个"];
     [self addChildVC:[[SecondViewController alloc] init] withTitle:@"第二个"];
      [self addChildVC:[[ThirdViewController alloc] init] withTitle:@"第三个"];
    
}

-(void)addChildVC:(UIViewController *)VC withTitle:(NSString *)title{

    VC.title = title;
    MainNavViewController *mainVC = [[MainNavViewController alloc]initWithRootViewController:VC];
    
    [self addChildViewController:mainVC];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
