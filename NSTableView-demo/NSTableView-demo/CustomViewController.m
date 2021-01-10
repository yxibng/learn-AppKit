//
//  CustomViewController.m
//  NSTableView-demo
//
//  Created by 姚晓丙 on 2019/12/19.
//  Copyright © 2019 yxibng. All rights reserved.
//

#import "CustomViewController.h"
#import "CustomTableRowView.h"
#import "CustomTableCellView.h"
#define kColumnCount 5

@interface CustomViewController ()<NSTableViewDelegate, NSTableViewDataSource>
@property (weak) IBOutlet NSTableView *tableView;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 100;
}

- (nullable NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *identifier = @"tableCell";
    CustomTableCellView *cell = [tableView makeViewWithIdentifier:@"tableCell" owner:self];
    if (!cell) {
        cell = [[CustomTableCellView alloc] init];
        cell.identifier = identifier;
    }
    [cell setString:[NSString stringWithFormat:@"row = %d, column = %@",row, tableColumn.title]];
    return cell;
}


- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
{
    NSString *identifier = @"rowView";
    CustomTableRowView *view = [tableView makeViewWithIdentifier:identifier owner:self];
    if (!view) {
        view = [[CustomTableRowView alloc] init];
        view.identifier = identifier;
    }
    return view;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    return 44;
}

@end
