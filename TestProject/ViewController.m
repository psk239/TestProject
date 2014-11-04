//
//  ViewController.m
//  TestProject
//
//  Created by Paul Kim on 10/27/14.
//  Copyright (c) 2014 Paul Kim. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.imagesArray = [NSArray arrayWithObjects:
                        [NSURL URLWithString:@"http://smilethings.com/wp-content/uploads/2013/08/funny-baby-parcel-Funny-Baby-kids-child-images-fun-bajiroo-photos.jpg"],
                        [NSURL URLWithString:@"http://www.funnfun.in/wp-content/uploads/2012/09/funny-manmohan-smile.jpg"],
                        [NSURL URLWithString:@"http://www.baconwrappedmedia.com/wp-content/uploads/2013/01/funny-kids-bacon-wrapped-media-21.jpg"],
                        [NSURL URLWithString:@"http://www.funnfun.in/wp-content/uploads/2012/11/funny-monkey-hair-style.jpg"],
                        [NSURL URLWithString:@"http://www.imgion.com/images/01/Gajni-Boy.jpg"],
                        [NSURL URLWithString:@"http://www.commentsyard.com/graphics/funny/funny127.jpg"] ,
                        [NSURL URLWithString:@"http://www.jokesfb.com/wp-content/uploads/2013/04/Funny-Facebook-Reaction.jpg"] ,nil];
    
    self.tableView = [[UITableView alloc] init];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView setFrame:self.view.bounds];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    [self.view addSubview:self.tableView];
}

#pragma - UITableView Data Source Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.imagesArray.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *currentCell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];

    NSURL *currentUrl = [self.imagesArray objectAtIndex:indexPath.row];
    [currentCell.imageView sd_setImageWithURL:currentUrl placeholderImage:[UIImage imageNamed:@"Dandelion.gif"]];
    currentCell.textLabel.text = @"hello!";
    
    return currentCell;
}

#pragma - UITableView Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"The row that was pressed was row %ld", ((long)indexPath.row + 1));
}



@end
