//
//  ChildControllerPageAttributes.h
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ChildControllerPageAttributes : NSObject

/**
 * 导航控制器的类
 */
@property (nonatomic, strong) Class navigationClass;

/**
 * 子控制器的类
 */
@property (nonatomic, strong) Class controllerClass;

/**
 * TabbarItem的标题
 */
@property (nonatomic, strong) NSString *title;

/**
 * TabbarItem的字体默认颜色
 */
@property (nonatomic, strong) UIColor *titleNormolColor;

/**
 * TabbarItem的字体选中颜色
 */
@property (nonatomic, strong) UIColor *titleSelectColor;

/**
 * TabbarItem的正常图片
 */
@property (nonatomic, strong) NSString *image;

/**
 * TabbarItem的选中图片
 */
@property (nonatomic, strong) NSString *selectImage;

/**
 * 类方法创建属性对象
 */
+ (instancetype)attributeWithClass:(Class)controllerClass TabBarItemTitle:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage;

/**
 * 类方法创建属性对象
 */
+ (instancetype)attributeWithClass:(Class)class NavigationClass:(Class)navigationClass TabBarItemTitle:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage;

@end
