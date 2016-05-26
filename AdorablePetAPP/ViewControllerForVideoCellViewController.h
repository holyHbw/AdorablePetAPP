//
//  ViewControllerForVideoCellViewController.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/7.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewControllerForVideoCellViewController : UIViewController

@property(nonatomic,strong)UIView *videoView;
@property(nonatomic,strong)UIProgressView *progress;
@property(nonatomic,strong)NSDictionary *dic;

@property(nonatomic,assign)CGFloat tabbarHeight;


@end
