//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by 三輪智也 on 2015/04/29.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"

@implementation TestQueue {
    NSMutableArray *queue;
}

- (id)init
{
    queue = [NSMutableArray array];
    
    return self;
}

- (void)push:(id)object
{
    [queue addObject:object];
}

- (id)pop
{
    if (queue.count == 0) {
        return nil;
    }
    
    id obj = queue[0];
    [queue removeObjectAtIndex:0];
    
    return obj;
}

- (NSInteger)size
{
    return queue.count;
}

@end
