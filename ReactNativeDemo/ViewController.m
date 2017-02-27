//
//  ViewController.m
//  ReactNativeDemo
//
//  Created by 薛飞龙 on 2017/2/24.
//  Copyright © 2017年 薛飞龙. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>


@interface ViewController ()<RCTBridgeDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://127.0.0.1:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"ReactNativeDemo"
                         initialProperties :
     @{
       @"scores" : @[
               @{
                   @"name" : @"Name",
                   @"value": @"Flonger"
                   },
               @{
                   @"name" : @"Company",
                   @"value": @"ABS"
                   }
               ]
       }
                          launchOptions    : nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
    
//    [self gotoNew];
    
}


- (void)gotoNew
{
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://127.0.0.1:8081/index.ios.bundle"];

    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName: @"HelloWorldApp"
                                                 initialProperties:@{}
                                                     launchOptions:nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
    
}




@end
