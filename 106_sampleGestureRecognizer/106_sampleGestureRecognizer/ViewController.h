//
//  ViewController.h
//  106_sampleGestureRecognizer
//
//  Created by knife0125 on 2014/12/05.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *leftView;
@property (weak, nonatomic) IBOutlet UIView *rightView;
@property (weak, nonatomic) IBOutlet UIView *belowView;

- (IBAction)tapLeftView:(id)sender;
- (IBAction)tapRightView:(id)sender;

@end

