//
//  SampleViewController01.m
//  115_sampleTabAndNavigationDemo
//
//  Created by knife0125 on 2014/12/12.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "SampleViewController01.h"

@interface SampleViewController01 ()

@end

@implementation SampleViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"%ld", self.selectedRow);

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
