//
//  CustomCell.m
//  CustomCell
//
//  Created by Vaishali on 8/5/17.
//  Copyright © 2017 VaishaliApp. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize primarylabel,secondarylabel,check,checkbox;


- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
        // Initialization code
        primarylabel = [[UILabel alloc]init];
        primarylabel.textAlignment = UITextAlignmentLeft;
        primarylabel.font = [UIFont systemFontOfSize:14];
        secondarylabel = [[UILabel alloc]init];
        secondarylabel.textAlignment = UITextAlignmentLeft;
        secondarylabel.font = [UIFont systemFontOfSize:8];
        check = [[UIImageView alloc]init];
        checkbox=[[UIButton alloc]init];
        [self.contentView addSubview:primarylabel];
        [self.contentView addSubview:secondarylabel];
        [self.contentView addSubview:check];
        [self.contentView addSubview:checkbox];
        
        
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    CGRect contentRect = self.contentView.bounds;
    CGFloat boundsX = contentRect.origin.x;
    CGRect frame;
    
    frame= CGRectMake(boundsX+300 ,0, 50, 50);
    check.frame = frame;
    
    frame= CGRectMake(boundsX+100, 0, 50, 50);
    checkbox.frame=frame;
    
    frame= CGRectMake(boundsX+0 ,5, 200, 25);
    primarylabel.frame = frame;
    
    frame= CGRectMake(boundsX+0 ,30, 100, 15);
    secondarylabel.frame = frame;
}



- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end


