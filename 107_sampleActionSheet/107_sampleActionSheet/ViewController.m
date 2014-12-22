//
//  ViewController.m
//  107_sampleActionSheet
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

- (IBAction)buttonTaped:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"アクションシートだお"
                                                             delegate:self
                                                    cancelButtonTitle:@"キャンセル"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"選択1", @"選択2", nil];
    [actionSheet showInView:self.view];

}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"選択1が選択されました");
            break;
        case 1:
            NSLog(@"選択2が選択されました");
            break;
        default:
            NSLog(@"キャンセルボタンがクリックされました");
            break;
    }
}

@end
