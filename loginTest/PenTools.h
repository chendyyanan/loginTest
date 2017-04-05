//
//  PenTools.h
//  loginTest
//
//  Created by Mr. Chen on 2017/4/5.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface PenTools : NSObject
@property (nonatomic, strong)UIColor *color;
@property (nonatomic, assign)CGFloat width;
@property (nonatomic, assign)CGPathRef path;
@end
