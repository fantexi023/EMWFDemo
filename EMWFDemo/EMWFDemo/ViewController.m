//
//  ViewController.m
//  EMWFDemo
//
//  Created by jayDev on 2017/6/3.
//  Copyright © 2017年 jayDev. All rights reserved.
//

#import "ViewController.h"

#define NUM_OF_DEMOS 1
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_tableview setTarget:self];
    [_tableview setAction:@selector(action)];
    // Do any additional setup after loading the view.
}


#pragma mark - NSTableView Delegate / Datasource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return NUM_OF_DEMOS;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:@"TableCellView" owner:nil];
    cellView.textField.stringValue = @"Draw Line Demo";
    return cellView;
}

- (void)action {
    NSLog(@"");
}
@end
