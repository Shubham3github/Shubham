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
    UIImageView *check;
    UIButton *checkbox;
}

@property (nonatomic, strong) UILabel  *primarylabel;
@property (nonatomic, strong) UILabel  *secondarylabel;
@property (nonatomic, strong) UIImageView *check;
@property (nonatomic,strong)  UIButton *checkbox;
@end
