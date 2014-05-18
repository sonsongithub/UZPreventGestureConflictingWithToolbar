UZPreventGestureConflictingWithToolbar
======================================
Prevent conflicting interactive gesture recognizer with UIBarButtonItem on UIToolbar.

###What's UZPreventGestureConflictingWithToolbar?

- Prevent conflicting interactive gesture recognizer with UIBarButtonItem on UIToolbar.
- Conflict?

###Reproducing the "Conflict"

1. On UINavigationController.
2. Push on view controller at least.
3. Assume that visible view controller of UINavigationController has UIBarButtonItem to open the other modal view controller.
4. Keep touching the UIBarButtonItem to open the other modal view controller.
5. Begin and keep swipe gesture to pop view controller while keeping it.
6. Release touching the UIBarButtonItem.
7. Cancel or complete swipe gesture.

![image](https://raw.githubusercontent.com/sonsongithub/UZPreventGestureConflictingWithToolbar/master/screenshot/bad.gif)

###How to use

    - (void)viewDidLoad {
        [super viewDidLoad];
    	[self.navigationController setGestureRecognizerToPreventGestureConflictingWithToolbar];
    }
