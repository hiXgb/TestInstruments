//
//  CViewController.m
//  TestInstruments
//
//  Created by xgb on 2017/8/30.
//  Copyright © 2017年 xgb. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation CViewController

- (void)dealloc
{
    //
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create retain cycle
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(onTimerTimeOut) userInfo:nil repeats:YES];
    
    self.arr = [NSMutableArray new];
    for (int i = 0; i < 100000; i ++) {
        [_arr addObject:@(i)];
    }
}

- (void)onTimerTimeOut
{
    NSLog(@"onTimerTimeOut");
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
