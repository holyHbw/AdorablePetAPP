//
//  petGroupSubViewPhotoCellTableViewCell.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/6.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface petGroupSubViewPhoto_videoCell : UITableViewCell

@property(nonatomic,assign)CGFloat heightOfCell;
@property(nonatomic,strong)UIImageView *headPic;
@property(nonatomic,strong)UILabel *userName;
@property(nonatomic,strong)UILabel *devices;
@property(nonatomic,strong)UILabel *text;
@property(nonatomic,strong)UILabel *location;

@property(nonatomic,strong)UIView *container;
@property(nonatomic,strong)AVPlayer *player;
@property(nonatomic,strong)UIButton *btn;
@property(nonatomic,strong)UIProgressView *progressView;
@property(nonatomic,strong)NSString *string;//备用属性

-(CGFloat)heightOfCell;
-(petGroupSubViewPhoto_videoCell  *)initTableViewCellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)str string:(NSString *)string;
-(void)setUpAVPlayer;

@end
