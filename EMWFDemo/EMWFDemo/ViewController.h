//
//  ViewController.h
//  EMWFDemo
//
//  Created by jayDev on 2017/6/3.
//  Copyright © 2017年 jayDev. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDelegate,NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableview;

@end

