//
//  ViewController.m
//  109_sampleUserDefault
//
//  Created by knife0125 on 2014/12/08.
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

- (IBAction)endTextEdit:(id)sender {
    NSString *inputText = self.sampleTextField.text;
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:inputText forKey:@"text"];
    [userDefault synchronize];
}

@end
