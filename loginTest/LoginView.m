//
//  LoginView.m
//  loginTest
//
//  Created by Mr. Chen on 2017/4/5.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import "LoginView.h"

@interface LoginView ()


@end

@implementation LoginView{
    UITextField *_textField;
}

+(LoginView *) sharedInstance{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]initWithFrame:[UIScreen mainScreen].bounds];
    });
    return sharedInstance;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 200, 20)];
        label.text = @"输入密码";
        [self addSubview:label];
        
        UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(10, 80, 200, 20)];
        textField.backgroundColor = [UIColor whiteColor];
        textField.secureTextEntry = YES;
        [self addSubview:textField];
        
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 120, 200, 20)];
        button.backgroundColor = [UIColor orangeColor];
        [button setTitle:@"确定" forState:UIControlStateNormal];
        [button addTarget: self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        _textField = textField;
    }
    return self;
}

- (void)buttonAction:(UIButton *)button
{
    [self resignKeyWindow];
    self.hidden = YES;
}

- (void)show{
    [self makeKeyWindow];
    self.hidden = NO;
}

@end
