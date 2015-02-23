//
//  ViewController.m
//  MVCExample
//
//  Created by Tom Pullen on 23/02/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "ViewController.h"
#import "Task.h"
#import "TaskCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *tasksArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Task *task1 = [[Task alloc] init];
    task1.title = @"Eat Breakfast";
    task1.isCompleted = NO;
    
    Task *task2 = [[Task alloc] init];
    task2.title = @"Go Running";
    task2.isCompleted = YES;
    
    Task *task3 = [[Task alloc] init];
    task1.title = @"Do Homework";
    task1.isCompleted = NO;
    
    self.tasksArray = [@[task1, task2, task3] mutableCopy];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tasksArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *myIdentifier = @"TaskCell";
    TaskCell *cell = [tableView dequeueReusableCellWithIdentifier:myIdentifier];
    
    if (cell == nil) {
        cell = [[TaskCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myIdentifier];
    }
    
    Task *task = self.tasksArray[indexPath.row];
    
    cell.taskTitle.text = task.title;
    cell.isCompleted = task.isCompleted;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Task *task = self.tasksArray[indexPath.row];
    
    task.isCompleted = !task.isCompleted;
}

#pragma mark - UITableViewDelegate

@end
