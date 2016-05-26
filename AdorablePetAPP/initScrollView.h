//
//  initScrollView.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/3.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface initScrollView : UIScrollView<UIScrollViewDelegate>

@property(nonatomic,strong)UIImageView *fifth;
-(void)loadInitScrollView;
-(void)enter:(UIButton *)button;
@end
