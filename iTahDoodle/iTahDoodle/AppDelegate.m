//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by Kingson on 6/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - 应用委托对象的回调方法

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    UIViewController *rootViewController = [[UIViewController alloc] init];
//    
//    CGRect winFrame = [[UIScreen mainScreen] bounds];
//    
//    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
//    
//    self.window = theWindow;
//    
//    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
//    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
//    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
//    
//    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
//    
//    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
//    
//    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
//    
//    
//    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
//    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
//    self.taskField.placeholder = @"Type a task, tap Insert";
//    
//    
//    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    self.insertButton.frame = buttonFrame;
//    
//    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
//    
//    [rootViewController.view addSubview:self.taskTable];
//    [rootViewController.view addSubview:self.taskField];
//    [rootViewController.view addSubview:self.insertButton];
//    
//    self.window.rootViewController = rootViewController;
    
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
