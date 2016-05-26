//
//  petGroupSlideBar.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "scrollWithSlideViewDelegate.h"


@protocol petGroupSlideBarDelegate <NSObject>

-(void)changPositionOfSlideViewByRatio:(CGFloat)ratio;

@end

@interface petGroupSlideBar : UIView<petGroupSlideBarDelegate,scrollWithSlideViewDelegate>
@property(nonatomic,strong)UIView *slideView;
@property(nonatomic,assign)CGFloat singleWidth;
@property(nonatomic,strong)id<scrollWithSlideViewDelegate> scrollDelegate;

-(void)loadPetGroupSlideBar:(NSInteger)numOfSubview heightOfSlideView:(CGFloat)heightOfView heightOfButton:(CGFloat)heightOfButton yOfButton:(CGFloat)y;
-(void)slideButtonClick:(UIButton *)button;

@end
