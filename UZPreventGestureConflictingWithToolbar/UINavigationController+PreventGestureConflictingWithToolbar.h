//
//  UINavigationController+PreventGestureConflictingWithToolbar.h
//  UZPreventGestureConflictingWithToolbar
//
//  Created by sonson on 2014/05/17.
//  Copyright (c) 2014 sonson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UZToolbarTapGestureRecognizer.h"

@interface UINavigationController (PreventGestureConflictingWithToolbar) <UZToolbarTapGestureRecognizerDelegate>

/**
 * Attached UZToolbarTapGestureRecognizer to the UINavigationController's toolbar.
 **/
- (void)setGestureRecognizerToPreventGestureConflictingWithToolbar;

@end
