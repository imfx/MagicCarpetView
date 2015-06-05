//
//  MagicCarpetView.m
//  MagicCarpetView
//
//  Created by Felix Ayala on 6/5/15.
//  Copyright (c) 2015 Pandorga. All rights reserved.
//

#import "MagicCarpetView.h"
#import <QuartzCore/QuartzCore.h>

@interface MagicCarpetView ()
@end

@implementation MagicCarpetView

- (instancetype)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self loadXib:frame];
		[self baseInit];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		if ([self.subviews count] == 0) {
			[self loadXib:CGRectZero];
			[self baseInit];
		}
	}
	return self;
}

- (void)loadXib:(CGRect)frame {
	
	NSString *className = NSStringFromClass([self class]);
	NSArray *views = [[NSBundle mainBundle] loadNibNamed:className owner:self options:nil];
	
	self.contentView = [views firstObject];
}

- (void)baseInit {
	[self setLocalVars];
	[self stackViews];
}

- (void)setLocalVars {
	_aspectRatio = 1;
}

- (void)stackViews {
	[self addSubview:self.contentView];
}

- (void)layoutSubviews {
	[super layoutSubviews];
	
	CGFloat finalWidth;
	CGFloat finalHeight;
	
	CGFloat containerWidth = CGRectGetWidth(self.bounds);
	CGFloat containerHeight = CGRectGetHeight(self.bounds);
	
	// aspectRatio = width / height
	// width = height * aspectRatio
	// height = width / aspectRatio
	if (containerWidth >= containerHeight) {
		finalHeight = containerHeight;
		finalWidth = finalHeight * self.aspectRatio;
		
		if (finalWidth > containerWidth) {
			finalWidth = containerWidth;
			finalHeight = finalWidth / self.aspectRatio;
		}
		
	} else {
		finalWidth = containerWidth;
		finalHeight = finalWidth / self.aspectRatio;
		
		if (finalHeight > containerHeight) {
			finalHeight = containerHeight;
			finalWidth = finalHeight * self.aspectRatio;
		}
	}
	
	CGRect finalFrame = CGRectMake(0, 0, finalWidth, finalHeight);
	
	// Set final frames for all views
	self.contentView.frame = finalFrame;
	
	self.contentView.center = [self convertPoint:self.center fromView:self.superview];
}

@end
