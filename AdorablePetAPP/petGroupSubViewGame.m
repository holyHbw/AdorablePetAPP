//
//  petGroupSubViewGame.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupSubViewGame.h"

@implementation petGroupSubViewGame

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)set:(CGFloat)height{
    self.backgroundColor = [UIColor purpleColor];
    [self setFrame:CGRectMake([UIScreen mainScreen].bounds.size.width*3, 0, [UIScreen mainScreen].bounds.size.width, height)];
}
@end
