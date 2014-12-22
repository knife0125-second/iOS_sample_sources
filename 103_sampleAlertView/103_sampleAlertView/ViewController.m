//
//  ViewController.m
//  103_sampleAlertView
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

- (IBAction)showAlert:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"タイトルだお"
                              message:@"メッセージなんだお"
                              delegate:self
                              cancelButtonTitle:@"キャンセル"
                              otherButtonTitles:@"OK", nil];

    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"キャンセルされたお");
            break;
        case 1:
            NSLog(@"OKされたお");
            break;
        default:
            break;
    }
}

@end
