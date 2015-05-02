//
//  NIMModalViewController.m
//  NavigationInModal
//
//  Created by 武田 祐一 on 2013/04/17.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "NIMModalViewController.h"

@interface NIMModalViewController ()

@end

@implementation NIMModalViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.title = [NSString stringWithFormat:@"%d", self.navigationController.viewControllers.count];

    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(pressPushButton)];
    [self.navigationItem setRightBarButtonItem:rightButton];

    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"pop" style:UIBarButtonItemStylePlain target:self action:@selector(pressPopButton)];
    [self.navigationItem setLeftBarButtonItem:leftButton];
    self.navigationItem.leftItemsSupplementBackButton = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pressPushButton
{
    NIMModalViewController *modal = [[NIMModalViewController alloc] initWithNibName:@"NIMModalViewController" bundle:nil];
    [self.navigationController pushViewController:modal animated:YES];
}

- (void)pressPopButton
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
