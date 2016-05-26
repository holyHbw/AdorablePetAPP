//
//  petGroupSubViewPhoto.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "petGroupSubViewPhoto_videoCell.h"

@interface petGroupSubViewPhoto : UIView<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,assign)CGFloat cellHeight;
@property(nonatomic,strong)UITableView *tableView;
-(void)set:(CGFloat)height;
@end
