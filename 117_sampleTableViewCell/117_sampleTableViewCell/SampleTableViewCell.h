//
//  SampleTableViewCell.h
//  117_sampleTableViewCell
//
//  Created by NishideDaisuke on 2014/12/15.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *sampleImageView;
@property (weak, nonatomic) IBOutlet UILabel *sampleLabel;
@property (weak, nonatomic) IBOutlet UILabel *sampleDescription;

- (void)setData:(NSIndexPath *)indexPath;

@end
