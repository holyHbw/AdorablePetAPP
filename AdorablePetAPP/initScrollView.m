//
//  initScrollView.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/3.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "initScrollView.h"
#import "tabbar.h"

@implementation initScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)loadInitScrollView{

    self.delegate = self;
    NSLog(@"loadInitScrollView");
    UIImageView *first = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1"]];
    UIImageView *second= [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2"]];
    UIImageView *third = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3"]];
    UIImageView *fourth = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4"]];
    _fifth = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"5"]];
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    NSLog(@"%f",width);
    NSLog(@"%f",height);
    [first setFrame:CGRectMake(0, 0, width, height)];
    [second setFrame:CGRectMake(width, 0, width, height)];
    [third setFrame:CGRectMake(width*2, 0, width, height)];
    [fourth setFrame:CGRectMake(width*3, 0, width, height)];
    [_fifth setFrame:CGRectMake(width*4, 0, width, height)];
    _fifth.userInteractionEnabled = YES;
    
    [self setContentSize:CGSizeMake(width*5, 0)];
    [self addSubview:first];
    [self addSubview:second];
    [self addSubview:third];
    [self addSubview:fourth];
    [self addSubview:_fifth];
    self.pagingEnabled = YES;
    self.bounces = NO;
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    
    /*
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(135, 500, 50, 30)];
    [button setTitle:@"进入" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blackColor];
    [button addTarget:self action:@selector(enter:) forControlEvents:UIControlEventTouchUpInside];
    [_fifth addSubview:button];
     */
}

-(void)enter:(UIButton *)button{

    NSLog(@"enter");
    tabbar *tab = [[tabbar alloc]init];
    [[UIApplication sharedApplication] keyWindow].rootViewController = nil;
    [[UIApplication sharedApplication] keyWindow].rootViewController = tab;
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{

    NSLog(@"scrollViewDidEndScrollingAnimation");
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    if (self.contentOffset.x == 4*width) {
        NSLog(@"yes");
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(135, 350, 50, 30)];
        label.backgroundColor = [UIColor clearColor];
        [_fifth addSubview:label];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

    NSLog(@"scrollViewDidScroll");
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    if (self.contentOffset.x == 4*width) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(135, 500, 50, 30)];
        [button setTitle:@"进入" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blackColor];
        [button addTarget:self action:@selector(enter:) forControlEvents:UIControlEventTouchUpInside];
        [_fifth addSubview:button];
 }

}


/*- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidEndDecelerating");
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    if (self.contentOffset.x == 4*width) {
        NSLog(@"yes");
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(135, 350, 50, 30)];
        label.backgroundColor = [UIColor clearColor];
        [_fifth addSubview:label];
    }
}*/

@end
