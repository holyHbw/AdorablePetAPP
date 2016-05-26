//
//  petGroupSlideBar.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupSlideBar.h"

@implementation petGroupSlideBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)changPositionOfSlideViewByRatio:(CGFloat)ratio{

    CGFloat y = _slideView.frame.origin.y;
    CGFloat h = _slideView.frame.size.height;
    CGFloat w = _slideView.frame.size.width;
    [_slideView setFrame:CGRectMake(_singleWidth*ratio, y, w, h)];
    
    
}

-(void)loadPetGroupSlideBar:(NSInteger)numOfSubview heightOfSlideView:(CGFloat)heightOfView heightOfButton:(CGFloat)heightOfButton yOfButton:(CGFloat)y{

    NSLog(@"loadPetGroupSlideBar");
    [self setFrame:CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, heightOfView+heightOfButton)];
    //_container = [[UIView alloc]initWithFrame:CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, heightOfButton+heightOfView)];
    //设置slidebar属性，比如frame
    
    _singleWidth = [UIScreen mainScreen].bounds.size.width/numOfSubview;
    
    UIButton *woshai = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, _singleWidth, heightOfButton)];
    [woshai setTitle:@"我晒" forState:UIControlStateNormal];
    woshai.backgroundColor = [UIColor blackColor];
    woshai.tag = 1;
    
    UIButton *zhibo = [[UIButton alloc]initWithFrame:CGRectMake(_singleWidth, 0, _singleWidth, heightOfButton)];
    zhibo.backgroundColor = [UIColor blackColor];
    [zhibo  setTitle:@"直播" forState:UIControlStateNormal];
    zhibo.tag = 2;
    
    UIButton *chongtuan = [[UIButton alloc]initWithFrame:CGRectMake(_singleWidth*2, 0, _singleWidth, heightOfButton)];
    chongtuan.backgroundColor = [UIColor blackColor];
    [chongtuan setTitle:@"宠团" forState:UIControlStateNormal];
    chongtuan.tag = 3;
    
    UIButton *saishi = [[UIButton alloc]initWithFrame:CGRectMake(_singleWidth*3, 0, _singleWidth, heightOfButton)];
    saishi.backgroundColor = [UIColor blackColor];
    [saishi setTitle:@"赛事" forState:UIControlStateNormal];
    saishi.tag = 4;
    
    self.slideView = [[UIView alloc]initWithFrame:CGRectMake(0, heightOfButton, _singleWidth, heightOfView)];
    self.slideView.backgroundColor = [UIColor redColor];
    
    [woshai addTarget:self action:@selector(slideButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [zhibo addTarget:self action:@selector(slideButtonClick:)  forControlEvents:UIControlEventTouchUpInside];
    [chongtuan addTarget:self action:@selector(slideButtonClick:)  forControlEvents:UIControlEventTouchUpInside];
    [saishi addTarget:self action:@selector(slideButtonClick:)  forControlEvents:UIControlEventTouchUpInside];
    //[button addTarget:self action:@selector(toggleButton:) forControlEvents: UIControlEventTouchUpInside]
    
    [self addSubview:woshai];
    [self addSubview:zhibo];
    [self addSubview:chongtuan];
    [self addSubview:saishi];
    [self addSubview:_slideView];
    self.backgroundColor = [UIColor blackColor];
    
}

-(void)slideButtonClick:(UIButton *)button{

    NSLog(@"%ld",(long)button.tag);
    [_slideView setFrame:CGRectMake((button.tag-1)*_singleWidth, _slideView.frame.origin.y, _slideView.bounds.size.width, _slideView.bounds.size.height)] ;
    [_scrollDelegate scrollWithSlideViewRatio:button.tag-1];
    //NSLog(@"%f",_slideView.bounds.origin.y);//注意bounds与frame的区别
    
}
@end
