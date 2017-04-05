//
//  ViewController.m
//  loginTest
//
//  Created by Mr. Chen on 2017/4/5.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 320, 200, 20)];
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [button addTarget: self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonAction:(UIButton*)button
{
    [[LoginView sharedInstance] show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
