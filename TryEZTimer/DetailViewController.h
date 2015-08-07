//
//  DetailViewController.h
//  TryEZTimer
//
//  Created by Alan.Yen on 2015/8/7.
//  Copyright (c) 2015年 17Life All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

