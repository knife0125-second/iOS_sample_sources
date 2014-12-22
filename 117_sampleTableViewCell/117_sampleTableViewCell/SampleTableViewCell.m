//
//  SampleTableViewCell.m
//  117_sampleTableViewCell
//
//  Created by NishideDaisuke on 2014/12/15.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "SampleTableViewCell.h"

@implementation SampleTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setData:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            
            break;
        case 1:
            
        default:
            break;
    }
    

    NSInteger row = indexPath.row;
    
    NSString *title = [NSString stringWithFormat:@"%ld番目のセルだよ", row];
    NSString *description = [NSString stringWithFormat:@"%ld番目のディスクリプションだよ", row];
    NSString *imageName = [NSString stringWithFormat:@"sample%ld", row];
    
    self.sampleImageView.image = [UIImage imageNamed:imageName];
    self.sampleLabel.text = title;
    self.sampleDescription.text = description;
}

@end
