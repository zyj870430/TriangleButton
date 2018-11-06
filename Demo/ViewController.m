//
//  ViewController.m
//  Demo
//
//  Created by chongdian on 2018/5/28.
//  Copyright © 2018年 chongdian. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomButton *button = [CustomButton buttonWithType:0];
    button.frame = CGRectMake(0, 0, 300, 300);
    [button addTarget:self action:@selector(a) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:UIColor.redColor];
    [self.view addSubview:button];
    
    //三角形
    UIBezierPath *path = UIBezierPath.bezierPath;
    [path moveToPoint:CGPointMake(150, 0)];
    [path addLineToPoint:CGPointMake(0, 300)];
    [path addLineToPoint:CGPointMake(300, 300)];
    [path closePath];

    CAShapeLayer *shapLayer = [CAShapeLayer layer];
    shapLayer.path = path.CGPath;
    button.layer.mask = shapLayer;
//    [button.layer addSublayer:shapLayer];
    button.layer.masksToBounds = YES;
}

- (void)a
{
    NSLog(@"点击");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
