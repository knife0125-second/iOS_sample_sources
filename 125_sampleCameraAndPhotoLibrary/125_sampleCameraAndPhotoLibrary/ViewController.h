//
//  ViewController.h
//  125_sampleCameraAndPhotoLibrary
//
//  Created by NishideDaisuke on 2014/12/22.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIActionSheetDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)showActionSheet:(id)sender;

@end

