//
//  ViewController.m
//  106_sampleGestureRecognizer
//
//  Created by knife0125 on 2014/12/05.
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

- (IBAction)tapLeftView:(id)sender {
    UIColor *leftBackgroundColor = self.leftView.backgroundColor;
    self.belowView.backgroundColor = leftBackgroundColor;
}


- (IBAction)tapRightView:(id)sender {
    UIColor *rightBackgroundColor = self.rightView.backgroundColor;
    self.belowView.backgroundColor = rightBackgroundColor;
}

@end
