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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tasks = [NSMutableArray array];
    
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    
//    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
    
//    self.window = theWindow;
    
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    
    self.taskTable.dataSource = self;
    
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.taskTable];
    [self.view addSubview:self.taskField];
    [self.view addSubview:self.insertButton];

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

@end
