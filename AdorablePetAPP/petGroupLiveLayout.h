//
//  petGroupLiveLayout.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/21.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface petGroupLiveLayout : UICollectionViewFlowLayout

@property(nonatomic,strong)NSArray *layoutInfoArray;
@property(nonatomic,assign)CGSize contentSize;
@property(nonatomic,assign)CGSize itemSize1;
@property(nonatomic,assign)CGSize itemSize2;


//@property(nonatomic,assign)CGSize *contentSize;


@end
