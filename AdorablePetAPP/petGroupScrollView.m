//
//  petGroupView.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupScrollView.h"
#define Y 100
#define X 0

@implementation petGroupScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

    //移动的时候根据contentoffsize时事的改变slideView的位置
    CGFloat ratio = self.contentOffset.x/[UIScreen mainScreen].bounds.size.width;
    [_petdelegate changPositionOfSlideViewByRatio:ratio];
}

-(void)loadPetGroupScrollView:(NSInteger)numOfSubview{

    NSLog(@"loadPetGroupScrollView");
    _numOfSubview = numOfSubview;
    //self.edgesForExtendedLayout = UIRectEdgeNone;

    
    //1.设置自身属性
    [self setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width*4, 0)];
    self.pagingEnabled = YES;//分页滚动
    self.delegate = self;
    self.bounces = NO;
    self.scrollEnabled  = YES;
    self.backgroundColor = [UIColor redColor];
    self.showsVerticalScrollIndicator = FALSE;
    self.showsHorizontalScrollIndicator = FALSE;
   self.contentInset =  UIEdgeInsetsMake(-64 , 0, 0, 0);
    //2.装载四个subview
    _game = [[petGroupSubViewGame alloc]init];
    _live = [[petGroupSubViewLive alloc]init];
    _photo = [[petGroupSubViewPhoto alloc]init];
    _group = [[petGroupSubViewGroup alloc]init];
    [_game set:self.frame.size.height];
    [_live set:self.frame.size.height];
    [_photo set:self.frame.size.height];
    [_group set:self.frame.size.height];
    [self addSubview:_game];
    [self addSubview:_live];
    [self addSubview:_photo];
    [self addSubview:_group];
    
    
    
}

-(void)scrollWithSlideViewRatio:(float)ratio{

    //self.contentOffset.x = ratio*[UIScreen mainScreen].bounds.size.width;
    [self setContentOffset:CGPointMake(ratio*[UIScreen mainScreen].bounds.size.width, 0) animated:YES];
}

@end
