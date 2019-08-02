//
//  AppTabbarViewController.m
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "AppTabbarViewController.h"
#import "TestAViewController.h"
#import "TestBViewController.h"
#import "TestCViewController.h"
#import "TestDViewController.h"
#import "ChildControllerPageAttributes.h"
#import "ZLTabBar.h"
#import "TestEViewController.h"

// rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface AppTabbarViewController ()<ZLTabBarDelegate>

@end

@implementation AppTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ChildControllerPageAttributes *sub1 = [ChildControllerPageAttributes attributeWithClass:[TestAViewController class]
                                                              NavigationClass:[UINavigationController class]
                                                              TabBarItemTitle:@"One"
                                                                        image:@"first_normal"
                                                                  selectImage:@"first_selected"];
    // 自定义颜色
    sub1.titleNormolColor = UIColorFromRGB(0xb7b7b7);
    sub1.titleSelectColor = UIColorFromRGB(0x5349fc);
    NSArray *attArr = @[sub1,
                        
                        [ChildControllerPageAttributes attributeWithClass:[TestBViewController class]
                                                   NavigationClass:[UINavigationController class]
                                                   TabBarItemTitle:@"Two"
                                                             image:@"second_normal"
                                                       selectImage:@"second_selected"],
                        
                        [ChildControllerPageAttributes attributeWithClass:[TestCViewController class]
                                                   NavigationClass:[UINavigationController class]
                                                   TabBarItemTitle:@"four"
                                                             image:@"third_normal"
                                                       selectImage:@"third_selected"],
                        
                        [ChildControllerPageAttributes attributeWithClass:[TestDViewController class]
                                                   NavigationClass:[UINavigationController class]
                                                   TabBarItemTitle:@"five"
                                                             image:@"tabBar_mine_default"
                                                       selectImage:@"tabBar_mine_default"]];
    
    // 是否有像微博一样中间特殊的按钮 需要自定义一下
    [self setValue:[[ZLTabBar alloc] init] forKeyPath:@"tabBar"];
    
    //赋值属性数组
    self.childControllerPageAttributes = attArr;
    
    //tabbar背景颜色
    self.tabBar.barTintColor = [UIColor whiteColor];
}


#pragma mark ZLTabBarDelegate
- (void)specialButtonClick {
    TestEViewController *d = [[TestEViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:d];
    [self presentViewController:nav animated:YES completion:nil];
}
@end
