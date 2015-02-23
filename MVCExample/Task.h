//
//  Task.h
//  MVCExample
//
//  Created by Tom Pullen on 23/02/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic) NSString *title;
@property (assign) BOOL isCompleted;

@end
