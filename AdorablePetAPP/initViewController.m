//
//  initViewController.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/3.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "initViewController.h"
#import "initScrollView.h"

@interface initViewController ()

@end

@implementation initViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _whatInitV = [[initScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_whatInitV loadInitScrollView];
    [self.view addSubview:_whatInitV];
    
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
