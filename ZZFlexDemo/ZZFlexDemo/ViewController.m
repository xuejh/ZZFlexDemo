//
//  ViewController.m
//  ZZFlexDemo
//
//  Created by jinhui  xue on 2018/12/9.
//  Copyright © 2018年 jinhui  xue. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(fun1) name:@"aa" object:nil];
    
    
    UIButton * btn =self.view.addButton(1001).title(@"demo").titleColor([UIColor blackColor]).titleHL(@"high").titleColorHL([UIColor redColor]).cornerRadius(3.0f).border(1,[UIColor redColor]).masonry(^(MASConstraintMaker *make){
        make.size.mas_equalTo(CGSizeMake(80, 35));
        make.center.mas_equalTo(@100);
    }).eventBlock(UIControlEventTouchUpInside, ^(UIButton *sender){
        NSLog(@"touch up");
        
        [self presentViewController:[DemoViewController new] animated:YES completion:^{
            
        }];
    });
}


- (void)fun1{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
