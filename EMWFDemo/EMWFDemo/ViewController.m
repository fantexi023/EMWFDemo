//
//  ViewController.m
//  EMWFDemo
//
//  Created by jayDev on 2017/6/3.
//  Copyright © 2017年 jayDev. All rights reserved.
//

#import "ViewController.h"

#define NUM_OF_DEMOS 2

@interface ViewController()

@property (nonatomic, strong)  NSTabViewController *tabVC;

@end

@implementation ViewController

- (instancetype)init {
    if (self = [super init]) {
        _tabVC = [[NSTabViewController alloc] init];
    }
    return self;
}

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
    NSString *stringValue = nil;
    switch (row) {
        case 0: {
            stringValue = @"Draw Line Demo";
            break;
        }
        case 1: {
            stringValue = @"other";
            break;
        }
        default:
            break;
    }
    cellView.textField.stringValue = stringValue;
    return cellView;
}

- (void)action {
    
    NSLog(@"%ld",_tableview.selectedRow);
}
@end
