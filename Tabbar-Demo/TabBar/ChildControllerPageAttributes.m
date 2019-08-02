//
//  ChildControllerPageAttributes.m
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "ChildControllerPageAttributes.h"

@implementation ChildControllerPageAttributes

+ (instancetype)attributeWithClass:(Class)class NavigationClass:(Class)navigationClass TabBarItemTitle:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage {
    
    ChildControllerPageAttributes *subControllerAttribute = [ChildControllerPageAttributes attributeWithClass:class
                                                                                TabBarItemTitle:title
                                                                                          image:image
                                                                                    selectImage:selectImage];
    subControllerAttribute.navigationClass = navigationClass;
    return subControllerAttribute;
}

+ (instancetype)attributeWithClass:(Class)class TabBarItemTitle:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage {
    
    ChildControllerPageAttributes *subControllerAttribute = [[ChildControllerPageAttributes alloc] init];
    subControllerAttribute.controllerClass = class;
    subControllerAttribute.title = title;
    subControllerAttribute.image = image;
    subControllerAttribute.selectImage = selectImage;
    return subControllerAttribute;
}
@end
