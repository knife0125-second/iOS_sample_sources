//
//  SecondViewController.h
//  120_sampleCoreData
//
//  Created by NishideDaisuke on 2014/12/17.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *telLabel;
- (IBAction)closeWindow:(id)sender;

@end
