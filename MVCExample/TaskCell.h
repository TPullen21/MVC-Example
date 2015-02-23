//
//  TaskCell.h
//  MVCExample
//
//  Created by Tom Pullen on 23/02/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *taskTitle;
@property (assign, nonatomic) BOOL isCompleted;

@end
