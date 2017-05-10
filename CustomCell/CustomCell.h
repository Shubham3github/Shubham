//
//  CustomCell.h
//  CustomCell
//
//  Created by Vaishali on 8/5/17.
//  Copyright © 2017 VaishaliApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    UILabel *primarylabel;
    UILabel *secondarylabel;
    UIButton *button;
}

@property (nonatomic, strong) UILabel  *primarylabel;
@property (nonatomic, strong) UILabel  *secondarylabel;
@property (nonatomic,strong)  UIButton *button;
@end
