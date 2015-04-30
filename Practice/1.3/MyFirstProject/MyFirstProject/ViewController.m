//
//  ViewController.m
//  MyFirstProject
//
//  Created by 三輪智也 on 2015/04/30.
//  Copyright (c) 2015年 Tomoya Miwa. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    MixiSampleViewController *_sampleVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressAddButton:(id)sender {
    [self.view addSubview:_sampleVC.view];
}

- (IBAction)pressRemoveButton:(id)sender {
    [_sampleVC.view removeFromSuperview];
}
@end
