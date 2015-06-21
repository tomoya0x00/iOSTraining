//
//  MixiFirstViewController.m
//  MixiNotificationSample
//
//  Created by Koya Tamura on 2013/05/12.
//  Copyright (c) 2013年 Koya Tamura. All rights reserved.
//

#import "MixiFirstViewController.h"

@interface MixiFirstViewController ()

- (IBAction)pressPostNotification:(id)sender;
@end

@implementation MixiFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIMutableUserNotificationAction *climateOnAction =
        [[UIMutableUserNotificationAction alloc] init];
    
    climateOnAction.identifier = @"CLIMATE_ON_IDENTIFIER";
    climateOnAction.title = @"On Climate";
    climateOnAction.activationMode = UIUserNotificationActivationModeBackground;
    climateOnAction.destructive = NO;
    climateOnAction.authenticationRequired = NO;
    
    UIMutableUserNotificationCategory *climateOnCategory =
        [[UIMutableUserNotificationCategory alloc] init];
    
    climateOnCategory.identifier = @"CLIMATE_ON_CATEGORY";
    [climateOnCategory setActions:@[climateOnAction] forContext:UIUserNotificationActionContextDefault];
    
    NSSet *categories = [NSSet setWithObject:climateOnCategory];
    
    UIUserNotificationType types = UIUserNotificationTypeBadge|UIUserNotificationTypeAlert|UIUserNotificationTypeSound;
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:types
                                                                            categories:categories];
    
    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressPostNotification:(id)sender
{
    UILocalNotification *notification = [[UILocalNotification alloc] init];

    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
    notification.alertTitle = @"Test test";
    notification.alertBody = @"This is local notification1\nThis is local notification2\nThis is local notification3\nThis is local notification4\nThis is local notification5";
    notification.applicationIconBadgeNumber = 3;
    notification.userInfo = @{@"key":@"value"};
    notification.category = @"CLIMATE_ON_CATEGORY";
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}
@end


