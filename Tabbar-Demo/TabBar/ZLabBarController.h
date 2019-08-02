//
//  ZLabBarController.h
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChildControllerPageAttributes.h"

@interface ZLabBarController : UITabBarController

/**
 * 控制器的公共导航控制器类，如果没有按照系统导航控制器创建
 */
@property (nonatomic, strong) Class commonNavControllerClass;

/**
 * 控制器属性数组
 */
@property (nonatomic, strong) NSArray<ChildControllerPageAttributes *> *childControllerPageAttributes;
@end
