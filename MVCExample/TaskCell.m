//
//  TaskCell.m
//  MVCExample
//
//  Created by Tom Pullen on 23/02/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "TaskCell.h"

@implementation TaskCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setIsCompleted:(BOOL)isCompleted {
    if (!isCompleted) {
        self.taskTitle.textColor = [UIColor redColor];
    }
    else {
        self.taskTitle.textColor = [UIColor greenColor];
    }
}

@end
