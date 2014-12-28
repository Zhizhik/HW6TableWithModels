//
//  DeviceDetailsControllerViewController.h
//  homeWork6TableWithModels
//
//  Created by Zhizhik on 28.12.14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceDetailsController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

-(void)setDeviceName:(NSString *)string;


@end
