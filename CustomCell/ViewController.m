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
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }
    //------------------------------BUTTON---------------------------------------------------------
    
    
    UIButton *button=[[UIButton alloc] initWithFrame:CGRectMake(300,0,50,50)];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
    [cell addSubview:button];
    [cell setIndentationWidth:45];
    [cell setIndentationLevel:1];
    
    //-------------------------------TAP GESTURE---------------------------------------------------
    
    //UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    //[recognizer setNumberOfTapsRequired:1];
    //button.userInteractionEnabled = YES;
    //[button addGestureRecognizer:recognizer];
    
    //----------------------------------------------------------------------------------------------
    cell.primarylabel.text = @"Meeting on iPhone Development";
    cell.secondarylabel.text = @"Sat 10:30";
    return cell;
}
-(void)buttonPressed:(UIButton *)btn
{
    btn.selected=!btn.selected;
}

// when user tap the row, what action you want to perform
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected %ld row", (long)indexPath.row);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
