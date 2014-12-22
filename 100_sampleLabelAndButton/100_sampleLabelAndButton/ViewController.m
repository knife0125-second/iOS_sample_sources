//
//  ViewController.m
//  100_sampleLabelAndButton
//
//  Created by knife0125 on 2014/12/04.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapButton:(id)sender {
    self.textLabel.text = @"変更されちゃった！！";
}

@end
