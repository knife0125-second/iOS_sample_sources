//
//  ViewController.h
//  104_sampleUITextField
//
//  Created by knife0125 on 2014/12/05.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)textEditEnd:(id)sender;

@end

