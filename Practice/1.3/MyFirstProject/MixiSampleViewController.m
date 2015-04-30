//
//  MixiSampleViewController.m
//  MyFirstProject
//
//  Created by 三輪智也 on 2015/04/30.
//  Copyright (c) 2015年 Tomoya Miwa. All rights reserved.
//

#import "MixiSampleViewController.h"

@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_blackView setBackgroundColor:[UIColor redColor]];
    [_blackView setFrame:CGRectMake(_blackView.frame.origin.x,
                                    _blackView.frame.origin.y,
                                    _blackView.frame.size.width/2,
                                    _blackView.frame.size.height/2)];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)pressAddButton:(id)sender {
}
@end
