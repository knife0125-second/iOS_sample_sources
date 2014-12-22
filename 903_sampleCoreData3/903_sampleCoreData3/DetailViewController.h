//
//  DetailViewController.h
//  903_sampleCoreData3
//
//  Created by NishideDaisuke on 2014/12/18.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

