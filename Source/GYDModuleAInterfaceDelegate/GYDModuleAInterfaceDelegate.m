//
//  GYDModuleAInterfaceDelegate.m
//  GYDModuleDemoInterface
//
//  Created by 宫亚东 on 2019/6/6.
//

#import "GYDModuleAInterfaceDelegate.h"
#import "GYDModuleAInterface.h"
#import "ViewControllerA.h"

@interface GYDModuleAInterfaceDelegate ()<GYDModuleAInterfaceProtocol>

@end

@implementation GYDModuleAInterfaceDelegate

+ (void)load {
    GYDModuleAInterface.delegate = [[self alloc] init];
}

- (void)showModuleAViewController {
    UIViewController *vc = [[ViewControllerA alloc] init];
    
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    [window.rootViewController presentViewController:vc animated:YES completion:nil];
    
}

@end
