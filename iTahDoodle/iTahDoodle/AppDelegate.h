//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Kingson on 6/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;


@end

