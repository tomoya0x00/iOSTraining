//
//  MyThirdViewController.h
//  MyFirstProject
//
//  Created by 三輪智也 on 2015/04/30.
//  Copyright (c) 2015年 mixi, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyThirdViewControlerDelegate <NSObject>
- (void)thirdViewControllerButtonTapped;
@end

@interface MyThirdViewController : UIViewController <MyThirdViewControlerDelegate>
@property (nonatomic, weak) id<MyThirdViewControlerDelegate> delegate;
@end
