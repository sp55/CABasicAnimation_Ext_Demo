//
//  ViewController.m
//  CABasicAnimation_Ext_Demo
//
//  Created by admin on 16/6/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/536962945589
//ios实现一个闪烁的动画

#import "ViewController.h"
#import "CABasicAnimation+Ext.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-50, 100, 100)];
    
    [imgView setImage:[UIImage imageNamed:@"Home_deviceSelect"]];
    [imgView sizeToFit];
    [self.view addSubview:imgView];
    //闪烁效果。
    [imgView.layer addAnimation:[CABasicAnimation opacityForever_Animation:0.5] forKey:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
