//
//  ViewController.m
//  101_sampleSwitch
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

- (IBAction)tapSwitch:(id)sender {
    if (self.sampleSwitch.on == YES) {
        self.textLabel.text = @"スイッチオン";
    } else {
        self.textLabel.text = @"スイッチオフ";
    }
}

@end
