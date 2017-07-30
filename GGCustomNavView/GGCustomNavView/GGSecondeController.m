//
//  GGSecondeController.m
//  GGCustomNavView
//
//  Created by mac on 2017/7/30.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "GGCustomNavgationBar.h"
#import "GGSecondeController.h"

#define K_WIDTH    [UIScreen mainScreen].bounds.size.width
#define k_HEIGHT   [UIScreen mainScreen].bounds.size.height;
#define RGBA_GGCOLOR(r,g,b,p) [UIColor colorWithRed:(r) / 255.0f green:(g) / 255.0f blue:(b) / 255.0f alpha:(p)]
@interface GGSecondeController ()<GGCustomNavgationBarDelegate>

@end

@implementation GGSecondeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   GGCustomNavgationBar *navBar = [[GGCustomNavgationBar alloc]initWithFrame:(CGRect){0,0,K_WIDTH,64}];
    navBar.navMiddleStyle = GGnavMiddleWithimg;
    navBar.bgColor =  RGBA_GGCOLOR(0, 153, 203, 1);
    navBar.leftBtnNorImg = [UIImage imageNamed:@"BackIcon"];
    navBar.rightBtnNorImg = [UIImage imageNamed:@"user"];
    navBar.middleImage =[UIImage imageNamed:@"MainTitle"];
    navBar.middleTextStr = @"订单详情";
    CGFloat scale = 0.7;
    navBar.middleImgRect = (CGRect){0,0,(K_WIDTH/2)*scale,30*scale};
    [self.view addSubview:navBar];
    navBar.delegate = self;
    
}
#pragma mark - 代理方法
- (void)touchTheLeftBtn:(UIButton *)btn
{
    NSLog(@"我是左边");
}
- (void)touchTheRightBtn:(UIButton *)btn
{
    NSLog(@"我是右边");
}

@end
