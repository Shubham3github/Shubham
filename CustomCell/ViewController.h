//
//  ViewController.h
//  CustomCell
//
//  Created by Vaishali on 8/5/17.
//  Copyright © 2017 VaishaliApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property(strong, nonatomic) UIButton *checkbox;


-(void)checkboxSelected:(id)sender;


@end

