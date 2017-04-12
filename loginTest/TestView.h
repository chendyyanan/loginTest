//
//  TestView.h
//  loginTest
//
//  Created by Mr. Chen on 2017/4/6.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "UIColor+BIDRandom.h"

@interface TestView : UIView

//声明属性变量
//前四个都是底层C类型变量
@property (assign, nonatomic) CGPoint firstTouchLocation;
@property (assign, nonatomic) CGPoint lastTouchLocation;
@property (assign, nonatomic) ShapeType shapeType;
@property (assign, nonatomic) BOOL useRandomColor;

//
@property (strong, nonatomic) UIColor * currectColor;
@property (strong, nonatomic) UIImage *drawImage;

@end
