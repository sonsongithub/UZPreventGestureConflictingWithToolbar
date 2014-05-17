//
//  UZToolbarTapGestureRecognizer.m
//  UZPreventGestureConflictingWithToolbar
//
//  Created by sonson on 2014/05/17.
//  Copyright (c) 2014 sonson. All rights reserved.
//

#import "UZToolbarTapGestureRecognizer.h"

@implementation UZToolbarTapGestureRecognizer

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	self.state = UIGestureRecognizerStatePossible;
	[self.dummyDelegate didBeginDummyTap:self];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	self.state = UIGestureRecognizerStateFailed;
	[self.dummyDelegate didEndDummyTap:self];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	self.state = UIGestureRecognizerStateFailed;
	[self.dummyDelegate didEndDummyTap:self];
}

@end
