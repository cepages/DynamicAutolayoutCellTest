//
//  DummyTableViewCell.m
//  CellTest
//
//  Created by Carlos Pages on 18/03/2015.
//  Copyright (c) 2015 IncunaLTD. All rights reserved.
//

#import "DummyTableViewCell.h"

@implementation DummyTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.height = 44;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(CGSize)sizeThatFits:(CGSize)size
{
    return CGSizeMake(size.width, self.height);
}

@end
