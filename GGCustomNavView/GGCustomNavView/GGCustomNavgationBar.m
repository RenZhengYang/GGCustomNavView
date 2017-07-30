//
//  GGCustomNavgationBar.m
//  PiggyLocker
//
//  Created by mac on 2017/7/27.
//  Copyright © 2017年 RenZhengYang. All rights reserved.
//

#import "GGCustomNavgationBar.h"

#define K_WIDTH    [UIScreen mainScreen].bounds.size.width
#define k_HEIGHT   [UIScreen mainScreen].bounds.size.height;

@interface GGCustomNavgationBar ()

@end

@implementation GGCustomNavgationBar
{
    UIButton *_leftBtn;
    UIButton *_rightBtn;
    UIImageView *_middleImg;
    UILabel *_middleText;
    UIView *_cotainView;
}
#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {

        self.backgroundColor = _bgColor;
    }
     return self;
}

#pragma mark - UI布局
- (void)setupSubViews
{
    _leftBtn = [[UIButton alloc]initWithFrame:(CGRect){0,20,44,44}];
    [_leftBtn addTarget:self action:@selector(clickleftWithbtn:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_leftBtn];

    _rightBtn = [[UIButton alloc]init];
    [_rightBtn addTarget:self action:@selector(clickRightWithbtn:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_rightBtn];
    _rightBtn.frame = CGRectMake(K_WIDTH-44, 20, 44, 44);
    
    if (_navMiddleStyle == GGnavMiddleWithimg) {
        
        _middleImg = [[UIImageView alloc]init];
        CGPoint center = _middleImg.center;
        center.x = K_WIDTH / 2;
        center.y = 44;
        _middleImg.center = center;
        [self addSubview:_middleImg];
        
    
        
     }
    
    if(_navMiddleStyle == GGnavMiddleWithLab){
        _middleText = [[UILabel alloc]initWithFrame:(CGRect){0,20,K_WIDTH/2,20}];
        CGPoint center = _middleText.center;
        center.x = K_WIDTH / 2;
        center.y = 44;
        _middleText.center = center;
        [_middleText setTextColor:[UIColor whiteColor]];
        _middleText.textAlignment = NSTextAlignmentCenter;
        _middleText.font = [UIFont boldSystemFontOfSize:20];
        [self addSubview:_middleText];
    }
    

    
}


#pragma 点击逻辑处理
- (void)clickRightWithbtn:(UIButton *)sender;
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(touchTheRightBtn:)])
    {
        [self.delegate touchTheRightBtn:sender];
    }
}
- (void)clickleftWithbtn:(UIButton *)sender;
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(touchTheLeftBtn:)])
    {
        [self.delegate touchTheLeftBtn:sender];
    }
    
}
#pragma mark - set/get
// set_nar_style
- (void)setNavMiddleStyle:(GGnavMiddleStyle)navMiddleStyle
{
    _navMiddleStyle = navMiddleStyle;
    [self setupSubViews];
}
// bgColor
- (void)setBgColor:(UIColor *)bgColor
{
    _bgColor = bgColor;
    self.backgroundColor = bgColor;
    
}
// left_img_nor
-(void)setLeftBtnNorImg:(UIImage *)leftBtnNorImg
{
  _leftBtnNorImg = leftBtnNorImg;
  [_leftBtn setImage:leftBtnNorImg forState:UIControlStateNormal];
}

// leftBtnselectImg
- (void)setLeftBtnselectImg:(UIImage *)leftBtnselectImg
{
    _leftBtnselectImg = leftBtnselectImg;
    [_leftBtn setImage:leftBtnselectImg forState:UIControlStateSelected];
}
// left_hightly_img
- (void)setLeftBtnHightlyImg:(UIImage *)leftBtnHightlyImg
{
    _leftBtnHightlyImg = leftBtnHightlyImg;
     [_leftBtn setImage:leftBtnHightlyImg forState:UIControlStateHighlighted];
}
// right_img_nor
- (void)setRightBtnNorImg:(UIImage *)rightBtnNorImg
{
    _rightBtnNorImg = rightBtnNorImg;
    [_rightBtn setImage:rightBtnNorImg forState:UIControlStateNormal];

}
// right_hightly_nor
- (void)setRightBtnHightlyImg:(UIImage *)rightBtnHightlyImg
{
    _rightBtnHightlyImg = rightBtnHightlyImg;
    [_rightBtn setImage:rightBtnHightlyImg forState:UIControlStateHighlighted];
}
// middle_image
-(void)setMiddleImage:(UIImage *)middleImage
{
    _middleImage = middleImage;
    _middleImg.image = middleImage;
}
// middleTextStr
-(void)setMiddleTextStr:(NSString *)middleTextStr
{
    _middleTextStr = middleTextStr;
    _middleText.text = middleTextStr;
}
//middleImgRect  
- (void)setMiddleImgRect:(CGRect)middleImgRect
{
    _middleImgRect = middleImgRect;
    _middleImg.bounds = middleImgRect;
}


@end
