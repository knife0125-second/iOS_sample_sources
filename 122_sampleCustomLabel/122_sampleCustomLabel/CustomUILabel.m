//
//  CustomUILabel.m
//  122_sampleCustomLabel
//
//  Created by NishideDaisuke on 2014/12/17.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "CustomUILabel.h"

@implementation CustomUILabel

/**
 * Labelがインスタンス化される際に必ず呼ばれるイニシャライズの処理
 * そのため、カスタムクラスを作成して、デフォルト設定を変更したい場合には、このinitWithCoderのメソッド内で設定を変えてあげる。
 **/
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    // テキストカラーを赤字にしてあげる
    self.textColor = [UIColor redColor];
    
    // Labelの背景色を青にしてあげる
    self.backgroundColor = [UIColor blueColor];
    
    // デフォルトで設定されている文字列を取得してデータを確認(ストーリーボードで設定されている文字が出るはず)
    NSLog(@"%@", self.text);

    // デフォルトの文言におきまりのprefixをつけるようなサンプルを作ってみる
    NSString *defaultText = self.text;
    NSString *prefixText = @"うんこうんこ%@";
    NSString *displayText = [NSString stringWithFormat:prefixText, defaultText];
    self.text = displayText;


    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
