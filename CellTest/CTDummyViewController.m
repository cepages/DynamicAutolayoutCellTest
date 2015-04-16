//
//  EPDummyViewController.m
//  CellTest
//
//  Created by Carlos Pages on 18/03/2015.
//  Copyright (c) 2015 IncunaLTD. All rights reserved.
//

#import "CTDummyViewController.h"
#import "CTDummyTableViewCell.h"

@interface CTDummyViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property(nonatomic,strong)NSMutableArray *listOfHeights;
@end

@implementation CTDummyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableview registerNib:[UINib nibWithNibName:NSStringFromClass([CTDummyTableViewCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    
    self.tableview.estimatedRowHeight = 44;
    self.tableview.rowHeight = UITableViewAutomaticDimension;
    // Do any additional setup after loading the view from its nib.
    
    self.listOfHeights = [NSMutableArray array];
    for (int i = 0; i < 30; i++) {
        [self.listOfHeights addObject:[NSNull null]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CTDummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.label.text = [NSString stringWithFormat:@"IndexPath %li",indexPath.row];
    
    if ([[self.listOfHeights objectAtIndex:indexPath.row] isKindOfClass:[NSNull class]]) {
        cell.height = 44;
    }
    else{
        cell.height = [[self.listOfHeights objectAtIndex:indexPath.row] integerValue];
    }
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    

    
    CTDummyTableViewCell* cell = (CTDummyTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    cell.height = cell.height + 80.0;
    
    [self.listOfHeights replaceObjectAtIndex:indexPath.row withObject:@(cell.height)];
    
    [tableView beginUpdates];

    [tableView endUpdates];

}


@end
