//
//  SecondViewController.m
//  120_sampleCoreData
//
//  Created by NishideDaisuke on 2014/12/17.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "AppDelegate.h"
#import "SecondViewController.h"
#import "Sample.h"

@interface SecondViewController ()

@property(strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // ManagedObjectContextの取得
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = delegate.managedObjectContext;

    //fetch設定を生成
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:NSStringFromClass([Sample class])];
    
    //sort条件を設定
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"created" ascending:NO];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];

    // managedObjectContextからデータを取得
    NSArray *results = [self.managedObjectContext executeFetchRequest:fetchRequest error:nil];
    
    // 最後に保存したデータのみを取得
    Sample *lastSample = [results firstObject];

    self.titleLabel.text = lastSample.name;
    self.addressLabel.text = lastSample.address;
    self.telLabel.text = lastSample.tel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeWindow:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
