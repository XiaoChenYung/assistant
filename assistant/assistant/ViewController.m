//
//  ViewController.m
//  assistant
//
//  Created by 杨晓晨 on 15/10/1.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import "ViewController.h"
#import "Weather.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [Weather loadWeatherDataFinish:^(NSArray *weatherArr) {
         NSLog(@"%@",weatherArr);
    }];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
