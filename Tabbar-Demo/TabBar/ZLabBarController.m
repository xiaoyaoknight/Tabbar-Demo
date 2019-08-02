//
//  ZLabBarController.m
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "ZLabBarController.h"

@interface ZLabBarController ()

@end

@implementation ZLabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/**
 * set方法， 同时创建子控制器并赋值
 */
- (void)setChildControllerPageAttributes:(NSArray<ChildControllerPageAttributes *> *)childControllerPageAttributes {
    
    _childControllerPageAttributes = childControllerPageAttributes;
    
    NSMutableArray *navArr = [NSMutableArray array];
    for (ChildControllerPageAttributes *att in childControllerPageAttributes) {
        UIViewController *subViewController = [[att.controllerClass alloc] init];
        
        Class navControllerClass = (att.navigationClass == nil) ? [UINavigationController class] : att.navigationClass;
        
        // 需要导航栏
        if (navControllerClass != nil)
            subViewController = [[navControllerClass alloc] initWithRootViewController:subViewController];
        
        subViewController.tabBarItem = [self getTabBarItemWithAttribute:att];
        [navArr addObject:subViewController];
    }
    self.viewControllers = navArr;
}

/**
 * 根据属性获取对应TabBarItem
 */
- (UITabBarItem *)getTabBarItemWithAttribute:(ChildControllerPageAttributes *)att {
    
    UIImage *originalImage = nil;
    if (att.image != nil) {
        originalImage = [[UIImage imageNamed:att.image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    UIImage *originalSelectImage = nil;
    if (att.selectImage != nil) {
        originalSelectImage = [[UIImage imageNamed:att.selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:att.title
                                                             image:originalImage
                                                     selectedImage:originalSelectImage];
    if (att.titleNormolColor) {
        
        [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: att.titleNormolColor} forState:UIControlStateNormal];
    }
    if (att.titleSelectColor) {
        
        [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: att.titleSelectColor} forState:UIControlStateSelected];
    }
    return tabBarItem;
}


@end
