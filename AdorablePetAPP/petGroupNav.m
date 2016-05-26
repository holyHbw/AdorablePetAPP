//
//  petGroupNav.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/30.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "petGroupNav.h"
#import "ViewControllerForVideoCellViewController.h"

@interface petGroupNav ()

@end

@implementation petGroupNav

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   /* petGroupContainerView *petGroupCV = [[petGroupContainerView alloc]init];
    [petGroupCV loadPetGroupView:4];
    [self.view addSubview:petGroupCV];*/
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadTheVideo:) name:@"LOAD_THE_VIDEO" object:nil];
    
    _mainVC = [[mainViewController alloc]init];
    _mainVC.navBarFrame = self.navigationBar.frame;
    [self pushViewController:_mainVC animated:NO];
}

-(void)loadTheVideo:(NSNotification *)notification{
    
    NSLog(@"Yes,i receive the notification!");
    NSDictionary *dic = notification.userInfo;
    ViewControllerForVideoCellViewController *vc = [[ViewControllerForVideoCellViewController alloc]init];
    vc.dic = dic;
    [self pushViewController:vc animated:YES];
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
