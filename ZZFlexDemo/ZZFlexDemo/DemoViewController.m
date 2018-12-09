//
//  DemoViewController.m
//  ZZFlexDemo
//
//  Created by jinhui  xue on 2018/12/9.
//  Copyright © 2018年 jinhui  xue. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
     [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(fun1) name:nil object:@"bb"];
    
    UIButton * btn =self.view.addButton(1001).title(@"demo").titleColor([UIColor blackColor]).titleHL(@"high").titleColorHL([UIColor redColor]).cornerRadius(3.0f).border(1,[UIColor redColor]).masonry(^(MASConstraintMaker *make){
        make.size.mas_equalTo(CGSizeMake(80, 35));
        make.center.mas_equalTo(@100);
    }).eventBlock(UIControlEventTouchUpInside, ^(UIButton *sender){
        NSLog(@"touch up");
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"aa" object:@"bb"];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)fun1{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
