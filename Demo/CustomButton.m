//
//  CustomButton.m
//  Demo
//
//  Created by chongdian on 2018/5/28.
//  Copyright © 2018年 chongdian. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    [super pointInside:point withEvent:event];
    
    //处理圆形
//    UIBezierPath*path = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
//    if ([path containsPoint:point]) {
//        return YES;
//    }
//    return NO;
    
    //处理三角形
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(150, 0)];
    [path addLineToPoint:CGPointMake(0, 300)];
    [path addLineToPoint:CGPointMake(300, 300)];
    [path closePath];
    if ([path containsPoint:point]) {
        return YES;
    }
    return NO;
}
@end
