//
//  TableViewController.m
//  TestInstruments
//
//  Created by xgb on 2017/8/30.
//  Copyright © 2017年 xgb. All rights reserved.
//

#import "TableViewController.h"
#import "AViewController.h"

@interface TableViewController ()

@property (nonatomic, strong) AViewController *aViewController;
@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.arr = [NSMutableArray new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.destinationViewController isKindOfClass:[AViewController class]]) {
        AViewController *ctrl = (AViewController *)segue.destinationViewController;
        ctrl.viewController = self;
        
        [self.arr addObject:ctrl];  //strong reference
        
//        self.aViewController = ctrl;    //create retain cycle
    }
}


@end
