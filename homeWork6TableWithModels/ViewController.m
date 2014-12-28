//
//  ViewController.m
//  homeWork6TableWithModels
//
//  Created by Zhizhik on 28.12.14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import "ViewController.h"
#import "DeviceDetailsController.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>{
    NSDictionary *devices;
    
  
   
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.table.dataSource = self;
    self.table.delegate = self;
    NSArray *iPhones = @[@"iPhone", @"iPhone 3GS"];
    NSArray *iPads = @[@"iPad", @"iPad 2", @"iPad mini"];
    devices =[[NSDictionary alloc] initWithObjectsAndKeys:iPhones,@"iPhone", iPads, @"iPad", nil];
   
}

-(NSArray *) sections {
    return [devices allKeys];
}

-(NSString *) keyForSection:(int)section {
    
    return [[self sections]objectAtIndex:section];
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = [self keyForSection:(int)section];
    NSArray *arrayForSection = [devices objectForKey:key];
    
    return [arrayForSection count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
   
    NSString *key = [self keyForSection:(int)indexPath.section];
    NSArray *arrayForSection = [devices objectForKey:key];
    cell.textLabel.text = [arrayForSection objectAtIndex:indexPath.row];
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.sections count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self keyForSection:(int)section];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *key = [self keyForSection:(int)indexPath.section];
    NSArray *arrayForSection = [devices objectForKey:key];
    NSString *device = [arrayForSection objectAtIndex:indexPath.row];
    
    UIStoryboard *s = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    
    DeviceDetailsController *deviceController = [s instantiateViewControllerWithIdentifier:@"details"];
//    [deviceController loadView];
//    deviceController.label.text = device;
    [deviceController setDeviceName:device];
    [self presentViewController:deviceController animated:YES completion:nil];
    
    
}


@end
