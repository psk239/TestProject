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
    
    NSLog(@"Hello world!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://oddstufflab.com/wp-content/uploads/2011/06/funny-face-12.jpg"]];
}

@end
