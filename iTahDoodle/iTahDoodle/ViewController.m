//
//  ViewController.m
//  iTahDoodle
//
//  Created by Kingson on 6/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

NSString *BNRDocPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.tasks = [NSMutableArray array];
    NSArray *plist = [NSArray arrayWithContentsOfFile:BNRDocPath()];
    
    if (plist) {
        self.tasks = [plist mutableCopy];
    } else {
        self.tasks = [NSMutableArray array];
    }
    
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    
//    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
    
//    self.window = theWindow;
    
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect insertButtonFrame = CGRectMake(228, 40, 72, 31);
    CGRect deleteButtonFrame = CGRectMake(228 + 82, 40, 72, 31);
    
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    
    self.taskTable.dataSource = self;
    self.taskTable.delegate = self;
    
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = insertButtonFrame;
    
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    self.deleteButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.deleteButton.frame = deleteButtonFrame;
    
    [self.deleteButton setTitle:@"Delete" forState:UIControlStateNormal];
    [self.deleteButton addTarget:self action:@selector(deleteTask:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.taskTable];
    [self.view addSubview:self.taskField];
    [self.view addSubview:self.insertButton];
    [self.view addSubview:self.deleteButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addTask:(id)sender
{
    NSString *text = [self.taskField text];
    
    if ([text length] == 0) {
        return;
    }
    
    NSLog(@"Task entered:%@", text);
    
    [self.tasks addObject:text];
    
    [self.taskTable reloadData];
    
    [self.taskField setText:@""];
    
    [self.taskField resignFirstResponder];
    
    [self.tasks writeToFile:BNRDocPath() atomically:YES];
}

- (void)deleteTask:(id)sender
{
    if (self.tasks && [self.tasks count] != 0) {
        [self.taskTable beginUpdates];
        [self.taskTable deleteRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow:self.currentSelectedCell inSection:0]] withRowAnimation:UITableViewRowAnimationFade];
        [self.tasks removeObjectAtIndex:self.currentSelectedCell];
        [self.taskTable endUpdates];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    
    return c;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.currentSelectedCell = indexPath.row;
    NSLog(@"curr:%ld", (long)self.currentSelectedCell);
}

@end
