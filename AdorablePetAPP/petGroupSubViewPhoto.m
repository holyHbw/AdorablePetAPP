//
//  petGroupSubViewPhoto.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupSubViewPhoto.h"

@implementation petGroupSubViewPhoto

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)set:(CGFloat)height{

    self.backgroundColor = [UIColor whiteColor];
    [self setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,height)];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.bounces = NO;
    [self addSubview:_tableView];
    NSLog(@"createTableViewNow");
    //_tableView.backgroundColor = [UIColor yellowColor];
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 8;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    //petGroupSubViewPhotoCellTableViewCell *cell = [[petGroupSubViewPhotoCellTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"1"];
    petGroupSubViewPhoto_videoCell *cell = [[petGroupSubViewPhoto_videoCell alloc]initTableViewCellWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"1" string:@"小星星.MP4"];
                                            //initTableViewCellWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    _cellHeight = [cell heightOfCell];
    //cell.backgroundColor = [UIColor redColor];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return _cellHeight;
}


@end
