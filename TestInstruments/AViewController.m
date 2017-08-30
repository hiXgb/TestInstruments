//
//  AViewController.m
//  TestInstruments
//
//  Created by xgb on 2017/8/30.
//  Copyright © 2017年 xgb. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation AViewController

- (void)dealloc
{
    //
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.arr = [NSMutableArray new];
    for (int i = 0; i < 100000; i ++) {
        [_arr addObject:@(i)];
    }
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
