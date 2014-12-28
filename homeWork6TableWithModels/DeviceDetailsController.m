//
//  DeviceDetailsControllerViewController.m
//  homeWork6TableWithModels
//
//  Created by Zhizhik on 28.12.14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import "DeviceDetailsController.h"

@interface DeviceDetailsController () {
    NSString *name;
}


@end

@implementation DeviceDetailsController

-(void)setDeviceName:(NSString *)string {
    name = string;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = name;
    
    NSString *urlString = [@"http://google.com" stringByAppendingPathComponent:name];
    NSURL *url = [NSURL URLWithString:@"http://google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [_webView loadRequest:request];
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

@end
