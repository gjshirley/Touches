//
//  BIDSwipesController.m
//  Touches
//
//  Created by guojin on 13-6-24.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import "BIDSwipesController.h"

@interface BIDSwipesController ()

@end

@implementation BIDSwipesController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    for (NSUInteger touchCount = 1; touchCount <= 5; touchCount++)
    {
        UISwipeGestureRecognizer *horizontal = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(reportHorizontalSwipe:)];
        horizontal.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
        horizontal.numberOfTouchesRequired = touchCount;
        [self.view addGestureRecognizer:horizontal];
        
        UISwipeGestureRecognizer *vertical = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportVerticalSwipe:)];
        vertical.direction = UISwipeGestureRecognizerDirectionDown | UISwipeGestureRecognizerDirectionUp;
        vertical.numberOfTouchesRequired = touchCount;
        [self.view addGestureRecognizer:vertical];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)reportHorizontalSwipe:(UIGestureRecognizer *)recognizer
{
    self.label.text = [NSString stringWithFormat:@"%d Horizontal swipe detected", [recognizer numberOfTouches]];
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

- (void)reportVerticalSwipe:(UIGestureRecognizer *)recognizer
{
    self.label.text = [NSString stringWithFormat:@"%d Vertical swipe detected", [recognizer numberOfTouches]];
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

- (void)eraseText
{
    self.label.text = @"";
}

@end
