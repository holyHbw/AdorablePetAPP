//
//  petGroupLiveCell1.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/21.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface petGroupLiveCell1 : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *playImage;

@property (weak, nonatomic) IBOutlet UILabel *numofplay;
@property (weak, nonatomic) IBOutlet UILabel *playStatue;
- (IBAction)dianzan:(id)sender;
@property(nonatomic,strong)UITapGestureRecognizer *oneTap;


@end
