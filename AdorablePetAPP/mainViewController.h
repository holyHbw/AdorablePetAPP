//
//  mainViewController.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/7.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerForVideoCellViewController.h"
#import "petGroupScrollView.h"
#import <MediaPlayer/MediaPlayer.h>

@interface mainViewController : UIViewController
@property(nonatomic,assign)CGFloat tabbarHeight;
@property(nonatomic,assign)CGRect navBarFrame;
@property(nonatomic,strong)petGroupScrollView *petGroupSV;
@property(nonatomic,strong)MPMoviePlayerController *c;
@end
