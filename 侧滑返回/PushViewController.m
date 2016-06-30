//
//  PushViewController.m
//  侧滑返回
//
//  Created by beginner on 16/6/29.
//  Copyright © 2016年 beginner. All rights reserved.
//

#import "PushViewController.h"
#import "PopViewController.h"
#import "POPAnimation.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
 
}

- (IBAction)pushAction:(id)sender {
    PopViewController *popVC = [PopViewController new];
    [self.navigationController pushViewController:popVC animated:true];
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
