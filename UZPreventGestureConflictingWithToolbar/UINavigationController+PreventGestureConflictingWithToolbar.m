//
//  UINavigationController+PreventGestureConflictingWithToolbar.m
//  UZPreventGestureConflictingWithToolbar
//
//  Created by sonson on 2014/05/17.
//  Copyright (c) 2014 sonson. All rights reserved.
//

#import "UINavigationController+PreventGestureConflictingWithToolbar.h"

@implementation UINavigationController (PreventGestureConflictingWithToolbar)

/**
 * Attached UZToolbarTapGestureRecognizer to the UINavigationController's toolbar.
 **/
- (void)setGestureRecognizerToPreventGestureConflictingWithToolbar {
	for (id obj in self.toolbar.gestureRecognizers) {
		if ([obj isKindOfClass:[UZToolbarTapGestureRecognizer class]]) {
			return;
		}
	}
	UZToolbarTapGestureRecognizer* tapGesture = [[UZToolbarTapGestureRecognizer alloc] initWithTarget:nil action:nil];
	tapGesture.dummyDelegate = self;
	[self.toolbar addGestureRecognizer:tapGesture];
}

/**
 * Tells to delegate when the view began to be touched.
 * @param gestureRecognizer UZToolbarTapGestureRecognizer object.
 **/
- (void)didBeginDummyTap:(UZToolbarTapGestureRecognizer*)gestureRecognizer {
	self.interactivePopGestureRecognizer.enabled = NO;
}

/**
 * Tells to delegate when the view ended to be touched.
 * @param gestureRecognizer UZToolbarTapGestureRecognizer object.
 **/
- (void)didEndDummyTap:(UZToolbarTapGestureRecognizer*)gestureRecognizer {
	self.interactivePopGestureRecognizer.enabled = YES;
}

@end
