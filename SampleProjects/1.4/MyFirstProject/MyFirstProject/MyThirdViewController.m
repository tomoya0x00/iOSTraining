//
//  MyThirdViewController.m
//  MyFirstProject
//
//  Created by 三輪智也 on 2015/04/30.
//  Copyright (c) 2015年 mixi, Inc. All rights reserved.
//

#import "MyThirdViewController.h"

@interface MyThirdViewController ()

@end

@implementation MyThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)thirdViewControllerButtonTapped {
    
}

- (IBAction)buttonTapped:(id)sender {
    [self.delegate thirdViewControllerButtonTapped];
}

@end
