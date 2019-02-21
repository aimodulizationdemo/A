//
//  Target_A.m
//  A
//
//  Created by aizexin on 2019/2/21.
//  Copyright © 2019 master. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
