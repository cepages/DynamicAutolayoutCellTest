//
//  DummyTableViewCell.h
//  CellTest
//
//  Created by Carlos Pages on 18/03/2015.
//  Copyright (c) 2015 IncunaLTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTDummyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;

@property(nonatomic,assign)CGFloat height;

@end
