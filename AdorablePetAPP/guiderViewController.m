//
//  guiderViewController.m
//  testAnimation
//
//  Created by 黄博闻 on 16/5/10.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "guiderViewController.h"

@interface guiderViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *dog1;
@property (weak, nonatomic) IBOutlet UIImageView *cat1;
@property (weak, nonatomic) IBOutlet UIImageView *dog2;
@property (weak, nonatomic) IBOutlet UIImageView *text1;
@property (weak, nonatomic) IBOutlet UIImageView *text2;
@property (weak, nonatomic) IBOutlet UIImageView *text3;
@property (weak, nonatomic) IBOutlet UIImageView *bb1;
@property (weak, nonatomic) IBOutlet UIImageView *bb2;
@property (weak, nonatomic) IBOutlet UIImageView *bb3;
@property (weak, nonatomic) IBOutlet UIImageView *bb4;
@property (weak, nonatomic) IBOutlet UIImageView *bb5;
@property (weak, nonatomic) IBOutlet UIImageView *bb6;

@property (weak, nonatomic) IBOutlet UIImageView *sign1;
@property (weak, nonatomic) IBOutlet UIImageView *sign2;
@property (weak, nonatomic) IBOutlet UIImageView *sign3;
@property (weak, nonatomic) IBOutlet UIImageView *sign4;
@property (weak, nonatomic) IBOutlet UIImageView *sign5;
@property (weak, nonatomic) IBOutlet UIImageView *search;
@property (weak, nonatomic) IBOutlet UIImageView *home;
@property (weak, nonatomic) IBOutlet UIImageView *line1;
@property (weak, nonatomic) IBOutlet UIImageView *l2;
@property (weak, nonatomic) IBOutlet UIImageView *l3;
@property (weak, nonatomic) IBOutlet UIImageView *l4;
@property (weak, nonatomic) IBOutlet UIImageView *l5;
@property (weak, nonatomic) IBOutlet UIImageView *nearby;
- (IBAction)enterButton:(id)sender;


@end

@implementation guiderViewController

-(void)enterButton:(id)sender{

    NSLog(@"present tabbar!");
    tabbar *tab = [[tabbar alloc]init];
    [self presentViewController:tab animated:YES completion:^{NSLog(@"done!");}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.scrollView setContentSize:CGSizeMake(1125, 0)];
    self.scrollView.delegate = self;
    
    self.home.transform = CGAffineTransformMakeScale(0,0 );
    self.line1.transform = CGAffineTransformMakeScale(0,0 );
    self.l2.transform = CGAffineTransformMakeScale(0,0 );
    self.l3.transform = CGAffineTransformMakeScale(0,0 );
    self.l4.transform = CGAffineTransformMakeScale(0,0 );
    self.l5.transform = CGAffineTransformMakeScale(0,0 );
    self.sign2.transform = CGAffineTransformMakeScale(0,0 );
    self.sign3.transform = CGAffineTransformMakeScale(0,0 );
    self.sign4.transform = CGAffineTransformMakeScale(0,0 );
    self.sign5.transform = CGAffineTransformMakeScale(0,0 );
    self.sign1.transform = CGAffineTransformMakeScale(0,0 );
    
    self.bb1.transform = CGAffineTransformMakeScale(0, 0);
    self.bb2.transform = CGAffineTransformMakeScale(0, 0);
    self.bb3.transform = CGAffineTransformMakeScale(0, 0);
    self.bb4.transform = CGAffineTransformMakeScale(0, 0);
    self.bb5.transform = CGAffineTransformMakeScale(0, 0);
    self.bb6.transform = CGAffineTransformMakeScale(0, 0);
    
    [self.dog1 setFrame:CGRectMake(-329, 59, 118, 118)];
    [self.text1 setFrame:CGRectMake(-201, 69, 149, 108)];
    
    [self.cat1 setFrame:CGRectMake(603, 224, 129, 129)];
    [self.text2 setFrame:CGRectMake(446, 241, 146, 114)];
    
    [self.dog2 setFrame:CGRectMake(-329, 387, 110, 110)];
    [self.text3 setFrame:CGRectMake(-196, 409, 149, 101)];
    
    
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{

    if (self.scrollView.contentOffset.x==375) {
        NSLog(@"let fly");
        [UIView animateWithDuration:0.3 delay:0.5 usingSpringWithDamping:0.8 initialSpringVelocity:1 options:nil animations:^{
            
            self.search.transform = CGAffineTransformMakeScale(0.7, 0.7);
            
        } completion:nil];
        [UIView animateWithDuration:0.3 delay:0.8 usingSpringWithDamping:0.7 initialSpringVelocity:1 options:nil animations:^{
            
            self.search.transform = CGAffineTransformMakeScale(1, 1);
            
        } completion:nil];
        [UIView animateWithDuration:0.3 delay:1.1 usingSpringWithDamping:0.7 initialSpringVelocity:1 options:nil animations:^{
            
            self.search.transform = CGAffineTransformMakeScale(0.001, 0.001);
            
        } completion:nil];
        [UIView animateWithDuration:1 delay:1.4 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:nil animations:^{
            
            self.home.transform = CGAffineTransformMakeScale(1, 1);
            self.sign1.transform = CGAffineTransformMakeScale(1, 1);
            self.sign3.transform = CGAffineTransformMakeScale(1, 1);
            self.sign5.transform = CGAffineTransformMakeScale(1, 1);
        } completion:nil];
        [UIView animateWithDuration:1 delay:1.8 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:nil animations:^{
            
            self.sign2.transform = CGAffineTransformMakeScale(1, 1);
            self.sign4.transform = CGAffineTransformMakeScale(1, 1);
        } completion:nil];
        [UIView animateWithDuration:1 delay:2 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:nil animations:^{
            
            self.line1.transform = CGAffineTransformMakeScale(1, 1);
            self.l2.transform = CGAffineTransformMakeScale(1, 1);
            self.l3.transform = CGAffineTransformMakeScale(1, 1);
            self.l4.transform = CGAffineTransformMakeScale(1, 1);
            self.l5.transform = CGAffineTransformMakeScale(1, 1);
        } completion:nil];
    }
    
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

    NSLog(@"s");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:0.6 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:nil animations:^{
    
        self.bb1.transform = CGAffineTransformMakeScale(1, 1);
        self.bb5.transform = CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    [UIView animateWithDuration:0.6 delay:0.4 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:nil animations:^{
        
        self.bb2.transform = CGAffineTransformMakeScale(1, 1);
        self.bb4.transform = CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    [UIView animateWithDuration:0.6 delay:0.7 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:nil animations:^{
        
        self.bb3.transform = CGAffineTransformMakeScale(1, 1);
        self.bb6.transform = CGAffineTransformMakeScale(1, 1);
    } completion:nil];
    
    [UIView animateWithDuration:0.6 delay:0.8 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:nil animations:^{
        
        [self.dog1 setFrame:CGRectMake(46, 59, 118, 118)];
        [self.text1 setFrame:CGRectMake(174, 69, 149, 108)];
    } completion:nil];
    
    [UIView animateWithDuration:0.6 delay:1.5 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:nil animations:^{
        
        [self.cat1 setFrame:CGRectMake(228, 224, 129, 128)];
        [self.text2 setFrame:CGRectMake(71, 241, 146, 114)];
    } completion:nil];
    
    [UIView animateWithDuration:0.6 delay:2.2 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:nil animations:^{
        
        [self.dog2 setFrame:CGRectMake(46, 387, 110, 110)];
        [self.text3 setFrame:CGRectMake(182, 405, 149, 101)];
    } completion:nil];
    
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
