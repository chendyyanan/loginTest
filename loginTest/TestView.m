//
//  TestView.m
//  loginTest
//
//  Created by Mr. Chen on 2017/4/6.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        _currectColor = [UIColor redColor];
        _useRandomColor = NO;
        _drawImage = [UIImage imageNamed:@""];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.useRandomColor) {
        self.currectColor = [UIColor randomColor];
    }
    UITouch *touch = [touches anyObject];
    self.firstTouchLocation = [touch locationInView:self];
    self.lastTouchLocation = [touch locationInView:self];
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    self.lastTouchLocation = [touch locationInView:self];
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    self.lastTouchLocation = [touch locationInView:self];
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.//如果你执行自定义绘画
// An empty implementation adversely affects performance during animation. 空执行不利影响动画的性能。
- (void)drawRect:(CGRect)rect {
    // Drawing code 绘图代码
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 10.0, 10.0);
    CGContextAddLineToPoint(context, 10.0, 50.0);
    CGContextAddLineToPoint(context, 50.0, 50.0);
    CGContextAddLineToPoint(context, 50.0, 10.0);
    CGContextAddLineToPoint(context, 10.0, 10.0);

    
    CGContextStrokePath(context);
    
    
    UIImage *image;
    CGPoint drawPoint = CGPointMake(100, 100);
    [image drawAtPoint:drawPoint];
    
    CGRect theRect = CGRectMake(100, 0, 100, 100);
    CGContextAddEllipseInRect(context, theRect);
    CGContextDrawPath(context, kCGPathFillStroke);
    
}


@end
