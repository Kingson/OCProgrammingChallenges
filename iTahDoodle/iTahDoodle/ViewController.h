//
//  ViewController.h
//  iTahDoodle
//
//  Created by Kingson on 6/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *BNRDocPath(void);

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) UIButton *deleteButton;
@property (nonatomic) NSInteger currentSelectedCell;

- (void)addTask:(id)sender;
- (void)deleteTask:(id)sender;
@end

