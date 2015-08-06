//
//  AppDelegate.m
//  UItabbarVCWithDeafultView
//
//  Created by Jeffery on 2015/8/6.
//  Copyright (c) 2015年 jeffery. All rights reserved.
//

#import "AppDelegate.h"
#import "UITabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UITabBarViewController *vc = [[UITabBarViewController alloc] init];
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.title = @"view1";
    vc1.view.backgroundColor = [UIColor redColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.text = @"view1";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    label.center = vc1.view.center;
    [vc1.view addSubview:label];

    //
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.title = @"view2";
    vc2.view.backgroundColor = [UIColor greenColor];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label2.text = @"view2";
    label2.textAlignment = NSTextAlignmentCenter;
    label2.textColor = [UIColor blackColor];
    label2.center = vc1.view.center;
    [vc2.view addSubview:label2];
    
    //
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.title = @"view3";
    vc3.view.backgroundColor = [UIColor blueColor];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label3.text = @"view3";
    label3.textAlignment = NSTextAlignmentCenter;
    label3.textColor = [UIColor blackColor];
    label3.center = vc1.view.center;
    [vc3.view addSubview:label3];
    
    [vc setViewControllers:@[vc1,vc2,vc3]];
    
    
    //    vc.selectedIndex = 0;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
