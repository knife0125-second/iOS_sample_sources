//
//  ViewController.h
//  101_sampleSwitch
//
//  Created by knife0125 on 2014/12/04.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UISwitch *sampleSwitch;
- (IBAction)tapSwitch:(id)sender;

@end

