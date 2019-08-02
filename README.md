# Tabbar-Demo
tabbar 

# Use
```
ChildControllerPageAttributes *sub1 = [ChildControllerPageAttributes attributeWithClass:[TestAViewController class]
                                                              NavigationClass:[UINavigationController class]
                                                              TabBarItemTitle:@"One"
                                                                        image:@"first_normal"
                                                                  selectImage:@"first_selected"];
    // 如果需要自定义颜色
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
```