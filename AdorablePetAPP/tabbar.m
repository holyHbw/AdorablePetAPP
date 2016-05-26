//
//  tabbar.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/30.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "tabbar.h"
#import "petGroupNav.h"
#import "petSayNav.h"
#import "AppDelegate.h"

@interface tabbar ()

@end

@implementation tabbar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppDelegate *dele = [[UIApplication sharedApplication] delegate];
    dele.tabbarHeight = self.tabBar.frame.size.height;
    
    petGroupNav *petGroupN = [[petGroupNav alloc]init];
    petGroupN.tabBarItem.title = @"宠物圈";
    petGroupN.mainVC.tabbarHeight = self.tabBar.frame.size.height;
    
    petSayNav *petSayN = [[petSayNav alloc]init];
    petSayN.tabBarItem.title = @"宠物说";
    petSayN.tabbarHeight = self.tabBar.frame.size.height;
    
    self.viewControllers = [NSArray arrayWithObjects:petGroupN,petSayN, nil];
    
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
