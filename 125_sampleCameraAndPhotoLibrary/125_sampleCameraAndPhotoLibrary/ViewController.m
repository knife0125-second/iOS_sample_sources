//
//  ViewController.m
//  125_sampleCameraAndPhotoLibrary
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

- (IBAction)showActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"カメラ選択"
                                                             delegate:self
                                                    cancelButtonTitle:@"キャンセル"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"カメラ", @"フォトライブラリ", nil];
    [actionSheet showInView:self.view];

}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            [self showCamera:buttonIndex];
            break;
        case 1:
            [self showCamera:buttonIndex];
            break;
        default:
            NSLog(@"キャンセルボタンがクリックされました");
            break;
    }
}

- (IBAction)showCamera:(NSInteger)isCamera {
    // カメラが使用可能かどうか判定する
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        NSLog(@"カメラ機能へアクセスできません");
        return;
    }
    
    // UIImagePickerControllerのインスタンスを生成
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    // デリゲートを設定
    imagePickerController.delegate = self;
    switch (isCamera) {
        case 0:
            // 画像の取得先をカメラに設定
            imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
            break;
        case 1:
            // 画像の取得先をカメラに設定
            imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        default:
            break;
    }
    
    // 撮影画面をモーダルビューとして表示する
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

// 画像が選択された時に呼ばれるデリゲートメソッド
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo {

    // 画像の取得がカメラからかフォトライブラリからかで処理を分岐
    switch ([picker sourceType]) {
        case UIImagePickerControllerSourceTypePhotoLibrary:
            break;
        case UIImagePickerControllerSourceTypeCamera:
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(targetImage:didFinishSavingWithError:contextInfo:), NULL);
            break;
        default:
            break;
    }
    
    // 取得した画像を画面上へ表示
    self.imageView.image = image;

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