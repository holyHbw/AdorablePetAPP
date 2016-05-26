//
//  AppDelegate.h
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/30.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "tabbar.h"
#import "initViewController.h"
#import "changeRootViewController.h"
#import "initScrollView.h"
#import "guiderViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property(nonatomic,strong)tabbar * tabbar;
//@property(nonatomic,strong)initViewController* initialViewController;
@property(nonatomic,strong)guiderViewController* guiderViewController;
@property(nonatomic,assign)CGFloat tabbarHeight;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

