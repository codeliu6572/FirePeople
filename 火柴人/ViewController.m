//
//  ViewController.m
//  火柴人
//
//  Created by 刘浩浩 on 16/1/29.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor grayColor];
    UIBezierPath *path=[[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(175, 100)];
    [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    [path moveToPoint:CGPointMake(150, 125)];
    [path addLineToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(125, 225)];
    [path moveToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(175, 225)];
    [path moveToPoint:CGPointMake(100, 150)];
    [path addLineToPoint:CGPointMake(200, 150)];
    
    CAShapeLayer *shapeLayer=[CAShapeLayer layer];
    shapeLayer.strokeColor=[UIColor redColor].CGColor;
    shapeLayer.fillColor=[UIColor clearColor].CGColor;
    shapeLayer.lineWidth=5;
    shapeLayer.lineJoin=kCALineJoinRound;
    shapeLayer.lineCap=kCALineCapRound;
    shapeLayer.path=path.CGPath;
    
    [self.view.layer addSublayer:shapeLayer];
    
    
    CGRect rect=CGRectMake(50, 300, 100, 100);
    CGSize size=CGSizeMake(20, 20);
    UIRectCorner corners=UIRectCornerTopRight | UIRectCornerBottomRight |UIRectCornerBottomLeft;
    UIBezierPath *rectPath=[UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:size];
    
    CAShapeLayer *rectLayer=[CAShapeLayer layer];
    rectLayer.strokeColor=[UIColor greenColor].CGColor;
    rectLayer.fillColor=[UIColor orangeColor].CGColor;
    rectLayer.lineWidth=5;
    rectLayer.lineJoin=kCALineJoinRound;
    rectLayer.lineCap=kCALineCapRound;
    rectLayer.path=rectPath.CGPath;
    [self.view.layer addSublayer:rectLayer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
