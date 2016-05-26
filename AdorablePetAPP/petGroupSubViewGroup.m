//
//  petGroupSubViewGroup.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupSubViewGroup.h"

@implementation petGroupSubViewGroup

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)set:(CGFloat)height{
    self.backgroundColor = [UIColor blueColor];
    [self setFrame:CGRectMake([UIScreen mainScreen].bounds.size.width*2, 0, [UIScreen mainScreen].bounds.size.width,height)];
}
@end
