//
//  ViewControllerForVideoCellViewController.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/7.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "ViewControllerForVideoCellViewController.h"

@interface ViewControllerForVideoCellViewController ()

@end

@implementation ViewControllerForVideoCellViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUp];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"退出全屏" style:UIBarButtonItemStylePlain target:nil action:nil];
    //[self.navigationItem hidesBackButton];
    [self.navigationItem setTitle:@"hehe"];
}

-(void)setUp{
    NSLog(@"%f",self.navigationController.navigationBar.frame.size.height);
    _videoView = [[UIView alloc]initWithFrame:CGRectMake(0, self.navigationController.navigationBar.frame.size.height, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _videoView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_videoView];
    
    NSString *str = [_dic objectForKey:@"videoName"];
    NSString *str2 = [_dic objectForKey:@"type"];
    
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:str ofType:str2];
    NSURL *url = [[NSURL alloc]initFileURLWithPath:videoPath];
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithURL:url];
    AVPlayer *video = [AVPlayer playerWithPlayerItem:playerItem];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:video];
    
    playerLayer.videoGravity = AVLayerVideoGravityResize;
    
    [playerLayer setFrame:CGRectMake(0, 60, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-100)];
    
    [self.view.layer addSublayer:playerLayer];
    [video play];
    
    //发送通知，隐藏tabbar
}

//隐藏tabbar
-(void)tabbarHidden{

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
