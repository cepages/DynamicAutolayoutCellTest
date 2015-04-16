//
//  DummyTableViewCell.m
//  CellTest
//
//  Created by Carlos Pages on 18/03/2015.
//  Copyright (c) 2015 IncunaLTD. All rights reserved.
//

#import "DummyTableViewCell.h"

@interface DummyTableViewCell ()

@property(nonatomic,strong)NSLayoutConstraint *heightConstraint;
@property (weak, nonatomic) IBOutlet UIView *greyView;

@end

@implementation DummyTableViewCell

- (void)awakeFromNib {
    // Initialization code
    _height = 44;
    
    self.heightConstraint = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:0 multiplier:1.0 constant:self.height];
    
    self.heightConstraint.priority = 999;
    [self.contentView addConstraint:self.heightConstraint];

}

-(void)prepareForReuse
{
    self.height = 44;
    [super prepareForReuse];
}


-(void)setHeight:(CGFloat)height
{
    _height = height;
    self.heightConstraint.constant = self.height;
}





- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
