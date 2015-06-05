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
	
	CardView *cardView = [[CardView alloc] initWithFrame:CGRectMake(0, 333, 320, 158)];
	cardView.backgroundColor = [UIColor cyanColor];
	
	[self.view addSubview:cardView];
}

@end
