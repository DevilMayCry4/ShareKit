//
//  ViewController.m
//  ShareKit
//
//  Created by user1 on 13-10-22.
//  Copyright (c) 2013年 user1. All rights reserved.
//

#import "ViewController.h"
#import "WeiboSDK.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushWeibo:(id)sender
{
    WBAuthorizeRequest *request = [[WBAuthorizeRequest alloc] init];
    request.redirectURI = @"http://www.baidu.com";
    request.scope = @"";
    request.userInfo = @{@"SSO_From": @"SendMessageToWeiboViewController", @"Other_Info_1": [NSNumber numberWithInt:123], @"Other_Info_2": @[@"obj1", @"obj2"], @"Other_Info_3": @{@"key1": @"obj1", @"key2": @"obj2"}};
    [WeiboSDK sendRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
