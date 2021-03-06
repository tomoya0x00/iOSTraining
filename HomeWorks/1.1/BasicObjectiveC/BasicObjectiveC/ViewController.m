//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "DomainEntity.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    NSMutableArray *array = [NSMutableArray array];

    DomainEntity *entity1 = [[DomainEntity alloc] init];
    entity1.domain = @"mixi.jp";
    entity1.entry = @[@"list_voice.pl", @"list_diary.pl", @"list_mymall_item.pl"];
    [array addObject:entity1];

    DomainEntity *entity2 = [[DomainEntity alloc] init];
    entity2.domain = @"mmall.jp";
    DomainEntityEntry *entry = [[DomainEntityEntry alloc] init];
    entry.path = @"add_diary.pl";
    entry.query = @{ @"tag_id" : @7};
    entity2.entry = @[entry];
    [array addObject:entity2];

    DomainEntity *entity3 = [[DomainEntity alloc] init];
    entity3.domain = @"itunes.apple.com";
    [array addObject:entity3];
    
    TestQueue *queue = [[TestQueue alloc] init];
    
    [queue push:@"0"];
    [queue push:@"1"];
    [queue push:@"2"];
    
    NSLog(@"queue.size:%ld", (long)[queue size]);
    NSLog(@"queue.pop:%@, %@, %@", [queue pop], [queue pop], [queue pop]);
    
    TestStack *stack = [[TestStack alloc] init];
    
    [stack push:@"0"];
    [stack push:@"1"];
    [stack push:@"2"];
    
    NSLog(@"stack.size:%ld", (long)[stack size]);
    NSLog(@"stack.pop:%@, %@, %@", [stack pop], [stack pop], [stack pop]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
