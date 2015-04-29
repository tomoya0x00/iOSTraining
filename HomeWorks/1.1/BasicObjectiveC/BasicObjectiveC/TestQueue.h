//
//  TestQueue.h
//  BasicObjectiveC
//
//  Created by 三輪智也 on 2015/04/29.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

- (void)push:(id)object;
- (id)pop;
- (NSInteger)size;

@end
