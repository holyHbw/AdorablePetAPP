//
//  petGroupLiveLayout.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/21.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupLiveLayout.h"
#define interitemSpacing 10


@implementation petGroupLiveLayout

//自定义layout需要重写三个方法
//-(void)prepareLayout
//-(NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
//- (CGSize)collectionViewContentSize

-(void)prepareLayout{
    //确定collecionView的contentSize
    //给collectionView中的每一个cell指定一个attributes（包含cell的位置信息）
    [super prepareLayout];

    NSLog(@"prepareLayout");
    NSMutableArray *layoutInfoArray = [[NSMutableArray alloc]init];
     NSInteger numofSection = [self.collectionView numberOfSections];
    NSLog(@"numberOfSections %ld",(long)numofSection);
    NSInteger maximunItem = 0;
    _itemSize1 = CGSizeMake([UIScreen mainScreen].bounds.size.width-20, 130);
    _itemSize2 = CGSizeMake(172, 180);
    
    for (int i=0; i<numofSection; i++) {
        NSMutableArray *subArray = [[NSMutableArray alloc]initWithCapacity:[self.collectionView numberOfItemsInSection:i]];
        for (int j=0; j<[self.collectionView numberOfItemsInSection:i]; j++) {
            NSIndexPath *index = [NSIndexPath indexPathForItem:j inSection:i];
            UICollectionViewLayoutAttributes *attributes = [self  layoutAttributesForItemAtIndexPath:index];
            [subArray addObject:attributes];
        }
        if (maximunItem<[self.collectionView numberOfItemsInSection:i]) {
            maximunItem = [self.collectionView numberOfItemsInSection:i];
        }
        [layoutInfoArray addObject:[subArray copy]];
        //[NSArray arrayWithArray:allBooksModelArray]
    }
    
    _contentSize = CGSizeMake(375, 130+2*(_itemSize2.height+interitemSpacing)+interitemSpacing+2*(_itemSize2.height+interitemSpacing)+interitemSpacing);
    _layoutInfoArray = [layoutInfoArray copy];
}

-(NSArray *)layoutAttributesForElementsInRect:(CGRect)rect{

    NSLog(@"layoutAttributesForElementsInRect");
    NSMutableArray *myAttributes =  [NSMutableArray array];
    //遍历数组，筛选出在当前rect内的attributes
    for(NSArray *subArray in _layoutInfoArray){

        for(UICollectionViewLayoutAttributes *attri in subArray){

            if(CGRectIntersectsRect(rect,attri.frame))//两个区域是否相交
                NSLog(@"inside");
                [myAttributes addObject:attri];
        }
    }
    return myAttributes;
}

- (CGSize)collectionViewContentSize{

    NSLog(@"collectionViewContentSize");
    return _contentSize;
}

-(UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"layoutAttributesForItemAtIndexPath");
    UICollectionViewLayoutAttributes *attri = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    
    
    if (indexPath.section == 0) {
        attri.frame = CGRectMake(interitemSpacing, interitemSpacing, [UIScreen mainScreen].bounds.size.width-20,111);
    }else if (indexPath.section == 1){
    
        CGFloat a = indexPath.row/2;//a代表在第几行，决定y
        CGFloat b = indexPath.row%2;//b代表在第几列，决定x
        attri.frame = CGRectMake(interitemSpacing+b*(_itemSize2.width+interitemSpacing), interitemSpacing+111+interitemSpacing+a*(_itemSize2.height+interitemSpacing), _itemSize2.width, _itemSize2.height);
    }else if (indexPath.section == 2){
    
        CGFloat a = indexPath.row/2;//a代表在第几行，决定y
        CGFloat b = indexPath.row%2;//b代表在第几列，决定x
       attri.frame = CGRectMake(interitemSpacing+b*(_itemSize2.width+interitemSpacing), interitemSpacing+111+(_itemSize2.height+interitemSpacing)*2+interitemSpacing+a*(_itemSize2.height+interitemSpacing), _itemSize2.width, _itemSize2.height);
    }
    return attri;
}

@end
