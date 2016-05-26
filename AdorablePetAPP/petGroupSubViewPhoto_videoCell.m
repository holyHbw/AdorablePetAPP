//
//  petGroupSubViewPhotoCellTableViewCell.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/6.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupSubViewPhoto_videoCell.h"

@implementation petGroupSubViewPhoto_videoCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _headPic = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
        _headPic.image = [UIImage imageNamed:@"1"];
        
        NSString *str0 = @"一只名叫胖胖的小狗狗～";
        CGSize testSize = [str0  sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:9]}];
        CGRect testRect = CGRectMake(_headPic.frame.origin.x+_headPic.bounds.size.width+6, 10, testSize.width, testSize.height);
        NSLog(@"%f,%f",testSize.width, testSize.height);
        _userName = [[UILabel alloc]initWithFrame:testRect];
        _userName.text = str0;
        [self.contentView addSubview:_userName];
        
        
        NSString *str1 = @"荣耀6plus";
        //根据文本内容获得文本占用空间大小
        CGSize devicesSize = [str1 sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:9]}];
        CGRect devicesRect = CGRectMake(_headPic.frame.origin.x+_headPic.bounds.size.width+6, 30, devicesSize.width, devicesSize.height);
        _devices.text = str1;
        _devices.frame = devicesRect;
        
        NSString *str2 =  @"[赶快扔掉这东西，它正慢慢杀死你的孩子！每个人都用过！］餐巾纸是大家都要用到的东西，央视曾曝光了劣质餐巾纸的生产过程。在曝光的视频中，生产车间简陋不堪，并且餐巾纸的纸浆原料竟然是回收回来的废品垃圾纸。这样的餐巾纸你以后还敢用吗？";
        //根据文本内容取得文本占用空间大小
        CGSize textSize=[str2 sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
        CGRect textRect=CGRectMake(_headPic.frame.origin.x, _headPic.frame.size.height+_headPic.frame.origin.y, textSize.width,textSize.height);
        _text.text = str2;
        _text.frame = textRect;
        
        _container = [[UIView alloc]initWithFrame:CGRectMake(10, _text.frame.origin.y+_text.bounds.size.height+10, [UIScreen mainScreen].bounds.size.width-20, 60)];
        
        NSString *str3 = @"中国,杭州  浙江理工大学理学院";
        //根据文本内容获得文本占用空间大小
        CGSize locationSize = [str3 sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];
        CGRect locationRect = CGRectMake(_container.frame.origin.x, _container.frame.size.height+_headPic.frame.origin.y+6, locationSize.width, locationSize.height);
        _devices.text = str3;
        _devices.frame = locationRect;
        
        
        [self.contentView addSubview:_headPic];
        [self.contentView addSubview:_text];
        [self.contentView addSubview:_location];
        [self.contentView addSubview:_devices];
        [self.contentView addSubview:_container];
    }
    return self;
}

-(petGroupSubViewPhoto_videoCell  *)initTableViewCellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)str string:(NSString *)string{

    self = [super initWithStyle:style reuseIdentifier:str];
    
    _string = string;
    
    _headPic = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    _headPic.image = [UIImage imageNamed:@"1"];
    
    _userName = [[UILabel alloc]init];
    _userName.font = [UIFont systemFontOfSize:14];
    NSString *str0 = @"一只名叫胖胖的小狗狗～";
    CGSize testSize = [str0 sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];
    CGRect testRect = CGRectMake(_headPic.frame.origin.x+_headPic.bounds.size.width+6, 15, testSize.width, testSize.height);
    NSLog(@"%f,%f",testSize.width, testSize.height);
    _userName.text = str0;
    _userName.frame = testRect;
    //_userName.textColor = [UIColor redColor];
    [self.contentView addSubview:_userName];
    
    
    NSString *str1 = @"荣耀6plus";
    _devices = [[UILabel alloc]init];
    _devices.font = [UIFont systemFontOfSize:9];
    //根据文本内容获得文本占用空间大小
    CGSize devicesSize = [str1 sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:9]}];
    CGRect devicesRect = CGRectMake(_headPic.frame.origin.x+_headPic.bounds.size.width+6, 45, devicesSize.width, devicesSize.height);
    _devices.text = str1;
    _devices.textColor = [UIColor grayColor];
    _devices.frame = devicesRect;
    
    _text = [[UILabel alloc]init];
    _text.font = [UIFont systemFontOfSize:9];
    NSString *str2 =  @"[赶快扔掉这东西，它正慢慢杀死你的孩子！每个人都用过！］";
    //根据文本内容取得文本占用空间大小
    CGSize textSize=[str2 sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:9]}];
    CGRect textRect=CGRectMake(_headPic.frame.origin.x, _headPic.frame.size.height+_headPic.frame.origin.y+15, textSize.width,textSize.height);
    _text.text = str2;
    _text.frame = textRect;
    
    _container = [[UIView alloc]init];
    _container = [[UIView alloc]initWithFrame:CGRectMake(10, _text.frame.size.height+_text.frame.origin.y+10, [UIScreen mainScreen].bounds.size.width-80, 120)];
    _container.backgroundColor = [UIColor grayColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(videoTap)];
    [_container addGestureRecognizer:tap];
    
    _location = [[UILabel alloc]init];
    _location.font = [UIFont systemFontOfSize:9];
    NSString *str3 = @"中国,杭州  浙江理工大学理学院";
    //根据文本内容获得文本占用空间大小
    CGSize locationSize = [str3 sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:9 ]}];
    CGRect locationRect = CGRectMake(_container.frame.origin.x, _container.frame.size.height+_container.frame.origin.y+15, locationSize.width, locationSize.height);
    _location.text = str3;
    _location.frame = locationRect;
    
    [self.contentView addSubview:_headPic];
    [self.contentView addSubview:_text];
    [self.contentView addSubview:_location];
    [self.contentView addSubview:_devices];
    [self.contentView addSubview:_container];
    
    [self setUpAVPlayer];
    
    return self;
}

-(void)videoTap{
 
    NSLog(@"放大视频播放");
    //发送一个video被点击的通知，让nav获取通知并push一个新的controller；
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"小星星",@"videoName",@"MP4",@"type", nil];
    //NSDictionary *dic = [NSDictionary dictionaryWithObject:_string forKey:@"videoName"];
    NSNotification *pushVideoNow = [NSNotification notificationWithName:@"LOAD_THE_VIDEO" object:self userInfo:dic];
    //[NSNotification notificationWithName:@"LOAD_THE_VIDEO" object:self];
    [[NSNotificationCenter defaultCenter] postNotification:pushVideoNow];
}

-(void)setUpAVPlayer{

    
    //创建播放器
    /*
    NSString *str = [NSString stringWithFormat:@"%i.mp4",0];
    str = [str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:str];
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithURL:url];*/
    NSString *mPath = [[NSBundle mainBundle] pathForResource:@"小星星" ofType:@"MP4"];
    NSURL *url = [[NSURL alloc] initFileURLWithPath:mPath];
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithURL:url];
    
    _player = [AVPlayer playerWithPlayerItem:playerItem];
    AVPlayerLayer *playerLayer =[AVPlayerLayer playerLayerWithPlayer:_player];
    playerLayer.frame = _container.bounds;
    
    //视屏填充模式
    playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    
    //获取视屏截图，截取指定时间的视频缩略图
    
    
    [_container.layer addSublayer:playerLayer];
    
    [_player play];

}

-(CGFloat)heightOfCell{

    return _headPic.frame.size.height+_text.frame.size.height+_location.frame.size.height+_container.frame.size.height+70;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
