//
//  TestEViewController.h
//  Tech-Demo
//
//  Created by 王泽龙 on 2018/5/28.
//  Copyright © 2018年 王泽龙. All rights reserved.
//

#import "TestEViewController.h"

@interface TestEViewController ()

@end

@implementation TestEViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"E";
    self.view.backgroundColor = [UIColor purpleColor];
    NSLog(@"D--------viewDidLoad跑完了");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
