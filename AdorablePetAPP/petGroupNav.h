//
//  petGroupNav.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/30.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mainViewController.h"


@interface petGroupNav : UINavigationController
@property(nonatomic,strong)mainViewController *mainVC;
@property(nonatomic,strong)NSDictionary *dic;
@end
