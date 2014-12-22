//
//  ViewController.m
//  120_sampleCoreData
//
//  Created by NishideDaisuke on 2014/12/16.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Sample.h"

@interface ViewController ()

@property(strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // AppDelegateで作成しているManagedObjectContexを取得してメンバー変数として保持
    self.managedObjectContext = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).managedObjectContext;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSString *name = self.nameField.text;
    NSString *address = self.addressField.text;
    NSString *tel = self.telField.text;
    NSDate *date = [NSDate new];
    
    // CoreDataのインサート用のオブジェクトを作成
    Sample *sample = [NSEntityDescription insertNewObjectForEntityForName:@"Sample" inManagedObjectContext:self.managedObjectContext];

    // 入力したいデータをCoreDataオブジェクトにセット
    [sample setName:name];
    [sample setAddress:address];
    [sample setTel:tel];
    [sample setCreated:date];
    
    // データを保存
    NSError *error = nil;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"error = %@", error);
    } else {
        NSLog(@"Insert Completed.");
    }
}

@end
