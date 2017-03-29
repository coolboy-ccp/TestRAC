//
//  ViewController.m
//  TestRAC
//
//  Created by 储诚鹏 on 17/3/29.
//  Copyright © 2017年 储诚鹏. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveObjC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 35)];
    tf.backgroundColor = [UIColor greenColor];
    tf.center = self.view.center;
    [self.view addSubview:tf];
    [tf.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"x---%@",x);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
