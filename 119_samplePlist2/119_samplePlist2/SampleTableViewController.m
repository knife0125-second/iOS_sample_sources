//
//  SampleTableViewController.m
//  119_samplePlist2
//
//  Created by NishideDaisuke on 2014/12/16.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import "SampleTableViewController.h"

typedef NS_ENUM(NSUInteger, FoodType){
    FoodTypeFruits = 0,
    FoodTypeVegetable,
};

@interface SampleTableViewController ()

@property(nonatomic) NSArray *fruits;
@property(nonatomic) NSArray *vegetable;

@end

@implementation SampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //プロジェクト内のファイルにアクセスできるオブジェクトを宣言
    NSBundle *bundle = [NSBundle mainBundle];

    //読み込むプロパティリストのファイルパス（場所）を指定
    NSString *path = [bundle pathForResource:@"sample" ofType:@"plist"];

    //プロパティリストの中身のデータを取得
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
//    NSArray *ary = [NSArray arrayWithContentsOfFile:path];

    // メンバー変数にデータをアサイン
    self.fruits = [dic valueForKey:@"fruits"];
    self.vegetable = [dic valueForKey:@"vegetable"];    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.

    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    // セクションタイトルの文字列変数を宣言
    NSString *title;

    // 表示しているセクションのタイトルを
    switch (section) {
        case FoodTypeFruits:
            title = @"フルーツだよね";
            break;
        case FoodTypeVegetable:
            title = @"野菜だよね";
            break;
        default:
            break;
    }

    return title;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
 
    NSInteger rows;

    switch (section) {
        case FoodTypeFruits:
            rows = [self.fruits count];
            break;
        case FoodTypeVegetable:
            rows = [self.vegetable count];
            break;
        default:
            break;
    }
    
    return rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *itemName;
    switch (indexPath.section) {
        case FoodTypeFruits:
            itemName = self.fruits[indexPath.row];
            break;
        case FoodTypeVegetable:
            itemName = self.vegetable[indexPath.row];
            break;
        default:
            break;
    }

    cell.textLabel.text = itemName;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
