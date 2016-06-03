//
//  BaseViewController.m
//  AnAvd
//
//  Created by Anurag Sharma on 6/3/16.
//  Copyright © 2016 Anurag Sharma. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *nav=[[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, 60)];
    nav.backgroundColor=[UIColor grayColor];
    [self.view addSubview:nav];
    UIButton *btn=[UIButton new];
    btn.frame=CGRectMake(0,30,80, 30);
    btn.titleLabel.text = @"Back";
    [btn setTitle:@"Back" forState:UIControlStateNormal];
    [nav addSubview:btn];
    [btn addTarget:self action:@selector(btnActionBack) forControlEvents:UIControlEventTouchUpInside];
    
    
    // Do any additional setup after loading the view.
}

-(void)btnActionBack{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
