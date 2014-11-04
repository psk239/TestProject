//
//  ViewController.h
//  TestProject
//
//  Created by Paul Kim on 10/27/14.
//  Copyright (c) 2014 Paul Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *imagesArray;
@end

