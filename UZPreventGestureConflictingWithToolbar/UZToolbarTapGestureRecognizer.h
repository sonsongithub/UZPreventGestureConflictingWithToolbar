//
//  UZToolbarTapGestureRecognizer.h
//  UZPreventGestureConflictingWithToolbar
//
//  Created by sonson on 2014/05/17.
//  Copyright (c) 2014 sonson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIGestureRecognizerSubclass.h>

@class UZToolbarTapGestureRecognizer;

@protocol UZToolbarTapGestureRecognizerDelegate <NSObject>

/**
 * Tells to delegate when the view began to be touched.
 * @param gestureRecognizer UZToolbarTapGestureRecognizer object.
 **/
- (void)didBeginDummyTap:(UZToolbarTapGestureRecognizer*)gestureRecognizer;

/**
 * Tells to delegate when the view ended to be touched.
 * @param gestureRecognizer UZToolbarTapGestureRecognizer object.
 **/
- (void)didEndDummyTap:(UZToolbarTapGestureRecognizer*)gestureRecognizer;

@end

/**
 * @class C2ToolbarTapGestureRecognizer
 * @discussion
 * UIGestureRecognizer．
 * This class tells to delegate two events that the view began/ended to be touched.
 **/
@interface UZToolbarTapGestureRecognizer : UIGestureRecognizer

@property (assign, nonatomic) id <UZToolbarTapGestureRecognizerDelegate> dummyDelegate;

@end
