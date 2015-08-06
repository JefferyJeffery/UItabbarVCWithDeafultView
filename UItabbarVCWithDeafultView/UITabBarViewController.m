//
//  UITabBarViewController.m
//  UItabbarVCWithDeafultView
//
//  Created by Jeffery on 2015/8/6.
//  Copyright (c) 2015年 jeffery. All rights reserved.
//

#import "UITabBarViewController.h"

@interface UITabBarViewController () <UITabBarControllerDelegate>
@property (nonatomic, strong) UIView *defalutView;
@end

@implementation UITabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.delegate = self;
    
    self.defalutView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.defalutView.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
    label.text = @"I am a deafult view";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    label.center = self.defalutView.center;
    [self.defalutView addSubview:label];
    
//    self.defalutView.backgroundColor = [UIColor yellowColor];
    
    [self.view insertSubview:self.defalutView belowSubview:self.tabBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    [self.defalutView setHidden:YES];
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
