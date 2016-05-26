//
//  petGroupSubViewLive.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface petGroupSubViewLive : UIView<UICollectionViewDataSource,UICollectionViewDelegate,UIScrollViewDelegate>

@property(nonatomic,strong)UICollectionView *collectionView;

-(void)set:(CGFloat)height;

@end
