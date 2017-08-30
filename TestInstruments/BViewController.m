//
//  BViewController.m
//  TestInstruments
//
//  Created by xgb on 2017/8/30.
//  Copyright © 2017年 xgb. All rights reserved.
//

#import "BViewController.h"

typedef void(^TestBlock)();

@interface BViewController ()

@property (nonatomic, copy) TestBlock testBlock;
@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation BViewController

- (void)dealloc
{
    //
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.testBlock = ^(){
        NSLog(@"class name:%@",NSStringFromClass([self class]));    //create retain cycle
    };
    
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
