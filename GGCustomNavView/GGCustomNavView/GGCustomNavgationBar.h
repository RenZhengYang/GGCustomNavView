//
//  GGCustomNavgationBar.h
//  PiggyLocker
//
//  Created by mac on 2017/7/27.
//  Copyright © 2017年 RenZhengYang. All rights reserved.
//

#import <UIKit/UIKit.h>
#define K_WIDTH    [UIScreen mainScreen].bounds.size.width
#define k_HEIGHT   [UIScreen mainScreen].bounds.size.height;
typedef NS_ENUM(NSInteger,GGnavMiddleStyle)
{
    GGnavMiddleWithLab = 0,  // middle_lab
    GGnavMiddleWithimg,      // middle_img
};

@protocol GGCustomNavgationBarDelegate <NSObject>

@optional;
- (void)touchTheLeftBtn:(UIButton *)btn;
- (void)touchTheRightBtn:(UIButton *)btn;
@end


@interface GGCustomNavgationBar : UIView

/** delegate*/
@property (nonatomic,weak) id <GGCustomNavgationBarDelegate>delegate;
/** style*/
@property (nonatomic,assign) GGnavMiddleStyle navMiddleStyle;
/** bgcolor*/
@property (nonatomic,strong) UIColor *bgColor;
/** left_nor_img*/
@property (nonatomic,strong) UIImage *leftBtnNorImg;
/** left_select_img*/
@property (nonatomic,strong) UIImage *leftBtnselectImg;
/** left_hightly_img*/
@property (nonatomic,strong) UIImage *leftBtnHightlyImg;
/** right_nor_img*/
@property (nonatomic,strong) UIImage *rightBtnNorImg;
/** right_hightly_img*/
@property (nonatomic,strong) UIImage *rightBtnHightlyImg;
/** middle_img*/
@property (nonatomic,strong) UIImage *middleImage;
/** middle_text_Str*/
@property (nonatomic,copy) NSString *middleTextStr;
/** middle_img_rect*/
@property (nonatomic,assign) CGRect middleImgRect;
@end
