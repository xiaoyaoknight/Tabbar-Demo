//
//  TestAViewController.m
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "TestAViewController.h"

@interface TestAViewController ()

@end

@implementation TestAViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"a";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 需要设置导航栏title，否则会和下面的tabbar标题一起动。
//    self.navigationItem.title = @"A";
    self.view.backgroundColor = [UIColor redColor];
    
    NSLog(@"A--------viewDidLoad跑完了");
}
@end
