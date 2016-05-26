//
//  petGroupLiveCell1.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/21.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupLiveCell1.h"
#define spacingBetweenCells 25

@implementation petGroupLiveCell1

bool a = YES;

-(instancetype)initWithFrame:(CGRect)frame{

    if(self = [super initWithFrame:frame]){
    
        NSLog(@"inside cell class now");
        
    }
    
    return self;
}

-(instancetype)init{
    
    if(self = [super init]){
        
        NSLog(@"inside cell class now");
        
    }
    
    return self;
}



- (IBAction)dianzan:(id)sender {
    
    if (a) {
        [ _button setBackgroundImage:[UIImage imageNamed:@"点赞"] forState:nil];
        a = NO;
    }else{
        [ _button setBackgroundImage:[UIImage imageNamed:@"已点赞"] forState:nil];
        a = YES;
    }

}
@end
