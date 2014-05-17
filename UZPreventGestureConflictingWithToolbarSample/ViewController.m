//
//  ViewController.m
//  UZPreventGestureConflictingWithToolbarSample
//
//  Created by sonson on 2014/05/17.
//  Copyright (c) 2014年 sonson. All rights reserved.
//

#import "ViewController.h"

#import "UINavigationController+PreventGestureConflictingWithToolbar.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)unwind:(UIStoryboardSegue*)unwindSegue {
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self.navigationController setGestureRecognizerToPreventGestureConflictingWithToolbar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
