//
//  EFMViewController.m
//  EternalForceModal
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "EFMViewController.h"
#import "EFMSecondViewController.h"

@interface EFMViewController ()

@end

@implementation EFMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    [self presentSecondViewController];
}

- (void)presentSecondViewController {
    EFMSecondViewController *secondViewController = [[EFMSecondViewController alloc] initWithNibName:@"EFMSecondViewController" bundle:nil];
    secondViewController.delegate = self;
    [self presentViewController:secondViewController animated:YES completion:nil];
}

#pragma EMFSecondViewController delegate

- (void)sedondViewControllerButtonTapped
{
    [self dismissViewControllerAnimated:YES completion:^{[self presentSecondViewController];}];
}

@end
