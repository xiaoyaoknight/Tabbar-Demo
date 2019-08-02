//
//  ZLTabBar.m
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "ZLTabBar.h"
#define IS_IPHONEX (([[UIScreen mainScreen] bounds].size.height - 812) ? NO : YES)

@interface ZLTabBar ()

// 特殊的按钮
@property (nonatomic, strong) UIButton *specialButton;

@end

@implementation ZLTabBar

- (UIButton *)specialButton {
    if (_specialButton == nil) {
        _specialButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_specialButton setImage:[UIImage imageNamed:@"tabBar_center"] forState:UIControlStateNormal];
        [_specialButton setImage:[UIImage imageNamed:@"tabBar_center"] forState:UIControlStateHighlighted];
        // 发布按钮的点击事件
        [_specialButton addTarget:self action:@selector(specialButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_specialButton];
    }
    return _specialButton;
}

/**
 重新计算按钮位置，摆放特点按钮在中间
 */
- (void)layoutSubviews {
    [super layoutSubviews];
    
    /**** 设置所有UITabBarButton的frame ****/
    // 按钮的尺寸
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = IS_IPHONEX ? self.frame.size.height - 17 : self.frame.size.height;
    CGFloat buttonY = 0;
    // 按钮索引
    int buttonIndex = 0;
    
    for (UIView *subview in self.subviews) {
        // 过滤掉非UITabBarButton
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue;
        
        // 设置frame
        CGFloat buttonX = buttonIndex * buttonW;
        // 把发布按钮的位置预留出来
        if (buttonIndex >= 2) { // 右边的2个UITabBarButton
            buttonX += buttonW;
        }
        subview.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        // 增加索引
        buttonIndex++;
    }
    
    /**** 设置中间的发布按钮的frame ****/
    self.specialButton.frame = CGRectMake(0, 0, buttonW, buttonH);
    self.specialButton.center = CGPointMake(self.frame.size.width * 0.5, buttonH * 0.5);
}

/**
 特殊按钮点击事件
 */
- (void)specialButtonClick {
    if (self.delegate && [self.delegate performSelector:@selector(specialButtonClick)]) {
        [self.delegate specialButtonClick];
    }
}

@end
