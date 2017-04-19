//
//  DrawingView.m
//  loginTest
//
//  Created by Mr. Chen on 2017/4/5.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#import "DrawingView.h"
#import "PenTools.h"


@interface DrawingView()

@property (nonatomic, strong, nullable) NSMutableArray * drawPaths;
@property (nonatomic, strong, nullable) NSMutableArray * drawLayers;

//测试fork
@end

@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.color = [UIColor blackColor];
    }
    return self;
}

- (void)setColor:(UIColor *)color{
    _color = color;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path moveToPoint:[[touches anyObject] locationInView:self]];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.backgroundColor = [UIColor clearColor].CGColor;
    layer.frame = self.bounds;
    
    layer.path = path.CGPath;
    
    layer.lineWidth = 3.0f;
    layer.strokeColor = self.color.CGColor;
    layer.miterLimit = 2.;
    layer.lineDashPhase = 10;
    layer.lineDashPattern = @[@1,@0];
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.fillRule = kCAFillRuleEvenOdd;
    //    layer setNeedsDisplayInRect:<#(CGRect)#>
    layer.lineCap = kCALineCapRound;
    layer.lineJoin = kCALineJoinRound;
    
    // 将layer添加进图层
    [self.layer addSublayer:layer];
    [self.drawPaths addObject:path];
    [self.drawLayers addObject:layer];
    
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
    UIBezierPath * path = self.drawPaths.lastObject;
    CAShapeLayer * layer = self.drawLayers.lastObject;
    [path addLineToPoint:[[touches anyObject] locationInView:self]];
    layer.path = path.CGPath;
}

- (NSMutableArray *)drawPaths{
    if (_drawPaths == nil) {
        _drawPaths = [NSMutableArray array];
    }
    return _drawPaths;
}

- (NSMutableArray *)drawLayers{
    if (_drawLayers == nil) {
        _drawLayers = [NSMutableArray array];
    }
    return _drawLayers;
}

- (void)clearAll{
    for (CAShapeLayer * layer in self.drawLayers) {
        [layer removeFromSuperlayer];
    }
    self.drawLayers = nil;
    [self.drawPaths removeAllObjects];
}

- (void)clearup{
    CAShapeLayer * layer = self.drawLayers.lastObject;
    
    [layer removeFromSuperlayer];
    [self.drawLayers removeLastObject];
}

@end
