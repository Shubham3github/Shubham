//
//  ViewController.m
//  CustomCell
//
//  Created by Vaishali on 8/5/17.
//  Copyright © 2017 VaishaliApp. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
 UITableView *tableView;
}

-(void)viewDidLoad {
    [super viewDidLoad];

    tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    // add to canvas
    [self.view addSubview:tableView];
}
// number of section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 1;
}
// number of row in the section
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
// the cell will be returned to the tableView
- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CustomCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier];
    }
    cell.primarylabel.text = @"Meeting on iPhone Development";
    cell.secondarylabel.text = @"Sat 10:30";
    cell.check.image = [UIImage imageNamed:@"download.png"];
    //cell.checkbox.userInteractionEnabled = YES;
    [cell.checkbox addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    // Set up the cell
//    switch (indexPath.row) {
//        case 0:
//            cell.primarylabel.text = @"Meeting on iPhone Development";
//            cell.secondarylabel.text = @"Sat 10:30";
//            cell.check.image = [UIImage imageNamed:@"download.png"];
//            cell.Button1.userInteractionEnabled = YES;
//            break;
//        case 1:
//            cell.primarylabel.text = @"Call With Client";
//            cell.secondarylabel.text = @"Planned";
//            cell.check.image = [UIImage imageNamed:@"download.png"];
//            cell.Button1.userInteractionEnabled = YES;
//            break;
//        case 2:
//            cell.primarylabel.text = @"Appointment with Joey";
//            cell.secondarylabel.text = @"2 Hours";
//            cell.check.image = [UIImage imageNamed:@"download.png"];
//            cell.Button1.userInteractionEnabled = YES;
//             break;
//        case 3:
//            cell.primarylabel.text = @"Call With Client";
//            cell.secondarylabel.text = @"Planned";
//            cell.check.image = [UIImage imageNamed:@"download.png"];
//            cell.Button1.userInteractionEnabled = YES;
//              break;
//        case 4:
//            cell.primarylabel.text = @"Appointment with Joey";
//            cell.secondarylabel.text = @"2 Hours";
//            cell.check.image = [UIImage imageNamed:@"download.png"];
//            cell.Button1.userInteractionEnabled = YES;
//            break;
//        default:
//            break;
//    }
    
    return cell;
}

// when user tap the row, what action you want to perform
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected %d row", indexPath.row);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
