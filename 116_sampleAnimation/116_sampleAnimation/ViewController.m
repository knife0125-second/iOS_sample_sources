//
//  ViewController.m
//  116_sampleAnimation
//
//  Created by knife0125 on 2014/12/12.
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

- (IBAction)animationTapped:(id)sender {
    [UIView animateWithDuration:5.0f
                          delay:0.0f
                        options:UIViewAnimationOptionRepeat
                     animations:^{
                         
                         CGRect rect = CGRectMake(300, 500, 10, 21);
                         [self.hogeLabel setFrame:rect];
                     }
                     completion:^(BOOL finished){
                         [self.hogeLabel setBackgroundColor:[UIColor redColor]];
                     }
    ];
}


@end
