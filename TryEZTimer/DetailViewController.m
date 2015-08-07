//
//  DetailViewController.m
//  TryEZTimer
//
//  Created by Alan.Yen on 2015/8/7.
//  Copyright (c) 2015年 17Life All rights reserved.
//

#import "DetailViewController.h"
#import "NSTimer+EZ_Helper.h"

@interface DetailViewController ()

@property(nonatomic, strong) NSTimer *timer;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    // Try EZ-Timer to avoid retain issuse
    __weak DetailViewController *wself = self;
    self.timer = [NSTimer ez_scheduledTimerWithTimeInterval:3.0f
                                                      block:^{
                                                          [wself doSomething];
                                                      } repeats:YES];
}

- (void)dealloc {
    NSLog(@"dealloc");
}

- (void)doSomething {
    NSLog(@"doSomething");
}

@end
