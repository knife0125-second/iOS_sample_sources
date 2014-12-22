//
//  ViewController.h
//  120_sampleCoreData
//
//  Created by NishideDaisuke on 2014/12/16.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *addressField;
@property (weak, nonatomic) IBOutlet UITextField *telField;
- (IBAction)save:(id)sender;

@end