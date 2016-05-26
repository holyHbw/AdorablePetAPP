//
//  petGroupView.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "petGroupSubViewGroup.h"
#import "petGroupSubViewGame.h"
#import "petGroupSubViewLive.h"
#import "petGroupSubViewPhoto.h"
#import "petGroupSlideBar.h"
#import "scrollWithSlideViewDelegate.h"

@interface petGroupScrollView : UIScrollView<UIScrollViewDelegate,petGroupSlideBarDelegate,scrollWithSlideViewDelegate>

@property(nonatomic,strong)petGroupSubViewPhoto *photo;
@property(nonatomic,strong)petGroupSubViewLive *live;
@property(nonatomic,strong)petGroupSubViewGame *game;
@property(nonatomic,strong)petGroupSubViewGroup *group;
@property(nonatomic,assign)NSInteger numOfSubview;
@property(nonatomic,strong)id<petGroupSlideBarDelegate> petdelegate;


-(void)loadPetGroupScrollView:(NSInteger)numOfSubview;

@end
