//
//  ViewController.m
//  MagicCarpetView
//
//  Created by Felix Ayala on 6/5/15.
//  Copyright (c) 2015 Pandorga. All rights reserved.
//

#import "ViewController.h"
#import "CardView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor purpleColor];
	
	CardView *cardView = [[CardView alloc] initWithFrame:CGRectMake(0, 333, 320, 158)];
	cardView.backgroundColor = [UIColor greenColor];
	cardView.contentView.backgroundColor = [UIColor blueColor];
	cardView.margin = 0.8; // Default is 1.0
	
	[self.view addSubview:cardView];
}

@end
