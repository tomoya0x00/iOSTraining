//
//  TestStack.m
//  BasicObjectiveC
//
//  Created by 三輪智也 on 2015/04/29.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestStack.h"

@implementation TestStack {
    NSMutableArray *stack;
}

- (id)init
{
    stack = [NSMutableArray array];
    
    return self;
}

- (void)push:(id)object
{
    [stack insertObject:object atIndex:0];
}

- (id)pop
{
    if (stack.count == 0) {
        return nil;
    }
    
    id obj = stack[0];
    [stack removeObjectAtIndex:0];
    
    return obj;
}

- (NSInteger)size
{
    return stack.count;
}

@end
