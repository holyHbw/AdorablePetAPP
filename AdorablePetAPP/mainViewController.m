//
//  mainViewController.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/4/7.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "mainViewController.h"
#import "petGroupScrollView.h"
#import "petGroupSlideBar.h"
#import "AppDelegate.h"

#define SLIDEBAR_BUTTON_HEIGHT 30
#define SLIDEBAR_SLIDE_UIVIEW_HEIGHT 1.6

@interface mainViewController ()

@end

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
     //self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    AppDelegate *dele = [[UIApplication sharedApplication]delegate];
    _tabbarHeight = dele.tabbarHeight;
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    CGFloat navBarHeight = _navBarFrame.size.height;
    //NSLog(@"navBarHeight %f",navBarHeight );
    
    
    
    //1.加载scrollview
    petGroupScrollView *petGroupSV = [[petGroupScrollView alloc]init];
    [petGroupSV setFrame:CGRectMake(0, SLIDEBAR_BUTTON_HEIGHT+SLIDEBAR_SLIDE_UIVIEW_HEIGHT+navBarHeight+20, width, height-_tabbarHeight-navBarHeight-SLIDEBAR_BUTTON_HEIGHT-SLIDEBAR_SLIDE_UIVIEW_HEIGHT-20)];

    [petGroupSV loadPetGroupScrollView:4];
    //petGroupSV.photo.tableView.delegate = petGroupSV.photo;
    [self.view addSubview:petGroupSV];
    
    
    //2.加载slidebar
    petGroupSlideBar *petGroupSB = [[petGroupSlideBar alloc]init];
    [petGroupSB loadPetGroupSlideBar:4 heightOfSlideView:SLIDEBAR_SLIDE_UIVIEW_HEIGHT heightOfButton:SLIDEBAR_BUTTON_HEIGHT yOfButton:20+navBarHeight];
    [self.view addSubview:petGroupSB];
    
    
    petGroupSV.petdelegate = petGroupSB;
    petGroupSB.scrollDelegate = petGroupSV;
    
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
