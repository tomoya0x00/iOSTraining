//
//  DomainEntuty.h
//  BasicObjectiveC
//
//  Created by 三輪智也 on 2015/04/28.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DomainEntity : NSObject

@property (nonatomic) NSString *domain;
@property (nonatomic) NSArray *entry;

@end

@interface DomainEntityEntry : DomainEntity

@property (nonatomic) NSString *path;
@property (nonatomic) NSDictionary *query;

@end
