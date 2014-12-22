//
//  PlaceholderTextView.m
//  123_sampleCustomTextView
//
//  Created by NishideDaisuke on 2014/12/17.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "PlaceholderTextView.h"

@interface PlaceholderTextView ()

@property (nonatomic, retain) UILabel *placeHolderLabel;

@end

@implementation PlaceholderTextView

// プレースホルダーの表示・非表示をするのに使うアニメーションの時間を定数として宣言。
CGFloat const UI_PLACEHOLDER_TEXT_CHANGED_ANIMATION_DURATION = 0.25;

/**
 * deallocメソッドはオブジェクトを破棄するタイミングで呼ばれるメソッドのはず。
 * そもそもこのビューやTextViewがガベージコレクション的にメモリ上から削除される際に、保持データなどを廃棄するように処理している（はず）。
 */
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
#if __has_feature(objc_arc)
#else
    [_placeHolderLabel release]; _placeHolderLabel = nil;
    [_placeholderColor release]; _placeholderColor = nil;
    [_placeholder release]; _placeholder = nil;
    [super dealloc];
#endif
}


/**
 * TextViewをxibファイル上で使っている場合にもうまくいくように初期化メソッドを作っている（はず）。
 */
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Use Interface Builder User Defined Runtime Attributes to set
    // placeholder and placeholderColor in Interface Builder.
    if (!self.placeholder) {
        [self setPlaceholder:@""];
    }
    
    if (!self.placeholderColor) {
        [self setPlaceholderColor:[UIColor lightGrayColor]];
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
}

/**
 * TextViewが作成される際の初期化のメソッド
 */
- (id)initWithFrame:(CGRect)frame
{
    if( (self = [super initWithFrame:frame]) )
    {
        [self setPlaceholder:@""];
        [self setPlaceholderColor:[UIColor lightGrayColor]];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

/**
 * TextViewの文字が変更された際に呼ばれるsetTextの中でコールされるメソッドとして定義されている。
 * 文字入力がされて入力内容が変更されるたびに、プレースホルダーの設定や文字入力状況をチェックしてプレースホルダーの表示状況を変更している。
 */
- (void)textChanged:(NSNotification *)notification
{
    // プレースホルダーが設定されていない場合は何も処理をせずに終わる
    if([[self placeholder] length] == 0) {
        return;
    }
    
    // 文字が入力された際には、定数UI_PLACEHOLDER_TEXT_CHANGED_ANIMATION_DURATIONで設定されている秒数をかけて、
    // プレースホルダーラベルのalpha値を0にすることでプレースホルダーを見えなくする。
    // 逆に文字が0文字になった際にはalpha値を1にすることで、プレースホルダーを再表示している。
    [UIView animateWithDuration:UI_PLACEHOLDER_TEXT_CHANGED_ANIMATION_DURATION animations:^{
        if([[self text] length] == 0) {
            [[self viewWithTag:999] setAlpha:1];
        } else {
            [[self viewWithTag:999] setAlpha:0];
        }
    }];
}


/**
 * textがセットされたタイミングで呼ばれるセッター
 * ユーザがTextViewに入力をするとおそらく呼ばれる。
 */
- (void)setText:(NSString *)text {
    [super setText:text];
    [self textChanged:nil];
}

/**
 * 要素を画面に描画する際に内部的に呼ばれているメソッド（でしょう）
 */
- (void)drawRect:(CGRect)rect
{
    // placeholderに文字列がセットされていた場合には、placeholderとして表示する用のLabelを作成してそれを配置している
    // (各行はそれぞれLabelに対して設定可能な設定を行っている)
    if([[self placeholder] length] > 0) {
        if (_placeHolderLabel == nil ) {
            _placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(8, 8, self.bounds.size.width - 16, 0)];
            _placeHolderLabel.lineBreakMode = NSLineBreakByWordWrapping;
            _placeHolderLabel.numberOfLines = 0;
            _placeHolderLabel.font = self.font;
            _placeHolderLabel.backgroundColor = [UIColor clearColor];
            _placeHolderLabel.textColor = self.placeholderColor;
            _placeHolderLabel.alpha = 0;
            _placeHolderLabel.tag = 999;
            [self addSubview:_placeHolderLabel];
        }
        
        _placeHolderLabel.text = self.placeholder;
        [_placeHolderLabel sizeToFit];
        [self sendSubviewToBack:_placeHolderLabel];
    }
    
    // 入力されている文字列がなく、プレースホルダーに設定されている文字がある場合は、プレースホルダー用のラベルをalpha値1にして見えるようにしている
    if( [[self text] length] == 0 && [[self placeholder] length] > 0 )
    {
        [[self viewWithTag:999] setAlpha:1];
    }
    
    // drawRectメソッドで実際に要素を配置
    [super drawRect:rect];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
