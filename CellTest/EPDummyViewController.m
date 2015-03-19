//
//  EPDummyViewController.m
//  CellTest
//
//  Created by Carlos Pages on 18/03/2015.
//  Copyright (c) 2015 IncunaLTD. All rights reserved.
//

#import "EPDummyViewController.h"
#import "DummyTableViewCell.h"

@interface EPDummyViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation EPDummyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableview registerNib:[UINib nibWithNibName:NSStringFromClass([DummyTableViewCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    
    self.tableview.estimatedRowHeight = 44;
    self.tableview.rowHeight = UITableViewAutomaticDimension;
    // Do any additional setup after loading the view from its nib.
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
    DummyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSLog(@"IndexPath %@, height:%f",indexPath,cell.height);
    cell.label.text = [NSString stringWithFormat:@"IndexPath %li",indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    DummyTableViewCell* cell = (DummyTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    cell.height = cell.height + 80.0;
    [tableView beginUpdates];
    
    
    [tableView endUpdates];

}


@end
