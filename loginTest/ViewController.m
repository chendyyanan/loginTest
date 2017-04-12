//
//  ViewController.m
//  loginTest
//
//  Created by Mr. Chen on 2017/4/5.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import "ViewController.h"
//#import "LoginView.h"
#import "DrawingView.h"
#import "UIColor+BIDRandom.h"
#import "TestView.h"


@interface ViewController ()
{
    DrawingView *drawing;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestView *testV = [[TestView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    testV.backgroundColor = [UIColor randomColor];
    [self.view addSubview:testV];
    
    return;
    
    drawing = [[DrawingView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    drawing.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:drawing];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 30, 50, 20)];
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"清除" forState:UIControlStateNormal];
    [button addTarget: self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake(80, 30, 50, 20)];

    button1.backgroundColor = [UIColor orangeColor];
    [button1 setTitle:@"撤销" forState:UIControlStateNormal];
    [button1 addTarget: self action:@selector(buttonAction1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonAction:(UIButton*)button
{
//    [[LoginView sharedInstance] show];
    [drawing clearAll];
    NSLog(@"clear");
}

- (void)buttonAction1:(UIButton *)button
{
    drawing.color = [UIColor redColor];
    
    [drawing clearup];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
