//
//  MixiSampleViewController2.m
//  MyFirstProject
//
//  Created by 三輪智也 on 2015/04/30.
//  Copyright (c) 2015年 Tomoya Miwa. All rights reserved.
//

#import "MixiSampleViewController2.h"

@interface MixiSampleViewController2 ()

@end

@implementation MixiSampleViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"Test";
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

- (IBAction)buttonTapped:(id)sender {
    self.label.text = @"YES";
}
@end
