//
//  petGroupSubViewLive.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupSubViewLive.h"
#import "petGroupLiveLayout.h"
#import "testlayout.h"
#import "petGroupLiveCell1.h"
#import "petGroupLiveCell2.h"
#import "mainViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@implementation petGroupSubViewLive

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//    return CGSizeMake(60, 60);
//}

-(void)set:(CGFloat)height{
    
    NSLog(@"load collectionView now");
    self.backgroundColor = [UIColor yellowColor];
    [self setFrame:CGRectMake([UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, height)];
    
    //设置collectionView的各个属性
    //UICollectionView的初始化必须要指定其layout
    petGroupLiveLayout *layout = [[petGroupLiveLayout alloc]init];
    _collectionView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:layout];
     //_collectionView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:[[UICollectionViewFlowLayout alloc]init]];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    //NSLog(@"collectionView's frame %f,%f,%f,%f",self.bounds.origin.x,self.bounds.origin.y,self.bounds.size.width,self.bounds.size.height);
    [self addSubview:_collectionView];
    //在创建collectoinView的时候顺带注册cell
    //[_collectionView registerClass:[petGroupLiveCell1 class] forCellWithReuseIdentifier:@"smallCell"];
    //[_collectionView registerClass:[petGroupLiveCell2 class] forCellWithReuseIdentifier:@"bigCell"];
    //在创建collectoinView的时候顺带注册xib
    [_collectionView registerNib:[UINib nibWithNibName:@"liveCell1" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"petGroupLiveCell1"];
    NSLog(@"ok");
    [_collectionView registerNib:[UINib nibWithNibName:@"liveCell2" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"petGroupLiveCell2"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    NSLog(@"numberOfItemsInSection");
    if (section == 0)
        return 1;
    else if (section == 1)
        return 4;
    else
        return 4;

}
//每个section中不同的行之间的行间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 20;
}
//每个item之间的间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}
//定义每个Section 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(15, 15, 5, 15);//分别为上、左、下、右
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    NSLog(@"numberOfSectionsInCollectionView");
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    CGFloat a = indexPath.row/2;//a代表在第几行，决定y
    CGFloat b = indexPath.row%2+1;//b代表在第几列，决定x
    CGFloat c = indexPath.section-1;
    
    NSLog(@"cellForItemAtIndexPath");
    petGroupLiveCell1 *cell1;
    petGroupLiveCell2 *cell2; //大长图
    if (indexPath.section == 0) {
        cell2 = [collectionView dequeueReusableCellWithReuseIdentifier:@"petGroupLiveCell2" forIndexPath:indexPath];
        //需要在此view中实现cell2中的scrollView的代理方法
        cell2.scrollview.delegate = self;
        cell2.scrollview.scrollEnabled = YES;
        cell2.scrollview.pagingEnabled = YES;
        cell2.scrollview.bounces = NO;
        [cell2.scrollview setContentSize:CGSizeMake(cell2.imageview1.frame.size.width*5, 0)];
        return cell2;
    }else{
        
        cell1 = [collectionView dequeueReusableCellWithReuseIdentifier:@"petGroupLiveCell1" forIndexPath:indexPath];
        NSString *str = [NSString stringWithFormat:@"%f",a*2+b+c*4];
        [cell1.image setImage:[UIImage imageNamed:str]];
        [cell1 setBackgroundColor:[UIColor clearColor]];
//        
//        2: UITapGestureRecognizer *singleFingerOne = [[UITapGestureRecognizer alloc] initWithTarget:self
//                                                      3: action:@selector(handleSingleFingerEvent:)];
//        4: singleFingerOne.numberOfTouchesRequired = 1; //手指数
//        5: singleFingerOne.numberOfTapsRequired = 1; //tap次数
//        6: singleFingerOne.delegate = self;
        
        cell1.oneTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(cell1Click)];
        cell1.oneTap.numberOfTouchesRequired = 1;
        [cell1 addGestureRecognizer:cell1.oneTap];

        return  cell1;
    }
}

-(void)cell1Click{

    UIResponder *next = [self nextResponder];
    mainViewController *a;
    do {
        if ([next isKindOfClass:[mainViewController class]]) {
            NSLog(@"%@ find the top viewcontroller named: %@",NSStringFromClass([self class]),NSStringFromClass([next class]));
            a = (mainViewController *)next;
            UIViewController *b = [[UIViewController alloc]init];
            b.view.backgroundColor = [UIColor grayColor];
            //NSString *path=[[NSBundle mainBundle] pathForResource:@"0" ofType:@"mp4"];
            //NSURL *url = [NSURL URLWithString:path];
//            NSURL *url = [NSURL URLWithString:@"http://v.youku.com/v_show/id_XMTU0MTA4OTEwMA==.html"];
//            a.c = [[MPMoviePlayerController alloc]initWithContentURL:url];
//            a.c.movieSourceType=MPMovieSourceTypeStreaming;
//            [a.c prepareToPlay];
//            [a.c play];
//            [b.view addSubview:a.c.view];
//            [a.c setControlStyle:MPMovieControlStyleDefault];
//            [a.c setFullscreen:YES];
//            [a.c.view setFrame:self.bounds];
            
            //NSURL *url = [NSURL URLWithString:@"http://v.youku.com/v_show/id_XMTU0MTA4OTEwMA==.html"];
//            NSString *mPath = [[NSBundle mainBundle] pathForResource:@"小星星" ofType:@"MP4"];
//            NSURL *url = [[NSURL alloc] initFileURLWithPath:mPath];
//            AVPlayerItem *playerItem = [AVPlayerItem playerItemWithURL:url];
//            AVPlayer *player = [AVPlayer playerWithPlayerItem:playerItem];
//            AVPlayerLayer *playerLayer =[AVPlayerLayer playerLayerWithPlayer:player];
//            playerLayer.frame = CGRectMake(40, 80, 300, 300);
//            //视屏填充模式
//            playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
//            //获取视屏截图，截取指定时间的视频缩略图
//            [b.view.layer addSublayer:playerLayer];
//            [player play];
            
            UIWebView * webView = [[UIWebView alloc]initWithFrame: CGRectMake(0, 0, 375, 670)];
            [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://v.youku.com/v_show/id_XMTU0MTA4OTEwMA==.html"]]];
            webView.backgroundColor = [UIColor clearColor];
            [b.view addSubview:webView];
            [a.navigationController pushViewController:b animated:NO];
            break;
        }
        next = [next nextResponder];
    } while (next != nil);
    NSLog(@"Now the cell1's image has been clicked!");
}

@end









