//
//  ViewController.m
//  102_sampleDatePicker
//
//  Created by knife0125 on 2014/12/04.
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

- (IBAction)datePickerChanged:(id)sender {
    // 日付の表示形式を指定するフォーマッターを準備
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    // DatePickerの選択結果から日付の文字列を取得
    NSString *dateString = [dateFormatter stringFromDate:self.datePicker.date];
    
    // 日付ラベルに日付の文字列を表示
    self.dateLabel.text = dateString;
}


@end
