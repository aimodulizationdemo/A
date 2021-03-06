//
//  AViewController.m
//  MainProjectDemo
//
//  Created by aizexin on 2019/2/21.
//  Copyright © 2019 master. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.center    = self.view.center;
    [button setTitle:@"push B view controller" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    [self.view addSubview:button];
}

- (void)didTappedPushBViewControllerButton:(UIButton*)button {
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
