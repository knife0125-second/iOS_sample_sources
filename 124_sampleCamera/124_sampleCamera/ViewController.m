//
//  ViewController.m
//  124_sampleCamera
//
//  Created by NishideDaisuke on 2014/12/22.
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

- (IBAction)showCamera:(id)sender {

    // カメラが使用可能かどうか判定する
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        NSLog(@"カメラ機能へアクセスできません");
        return;
    }
    
    // UIImagePickerControllerのインスタンスを生成
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    
    // デリゲートを設定
    imagePickerController.delegate = self;
    
    // 画像の取得先をカメラに設定
    imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    // 撮影画面をモーダルビューとして表示する
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

// 画像が選択された時に呼ばれるデリゲートメソッド
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo {
    // モーダルビューを閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
    
    // 渡されてきた画像をフォトアルバムに保存
    UIImageWriteToSavedPhotosAlbum(image, self, @selector(targetImage:didFinishSavingWithError:contextInfo:), NULL);
}

// 画像の選択がキャンセルされた時に呼ばれるデリゲートメソッド
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    // モーダルビューを閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 画像の保存完了時に呼ばれるメソッド
- (void)targetImage:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)context
{
    if (error) {
        NSLog(@"画像保存に失敗");
    } else {
        NSLog(@"画像保存に成功");
    }
}

@end
