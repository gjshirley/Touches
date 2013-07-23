//
//  BIDTapTapsController.m
//  Touches
//
//  Created by guojin on 13-6-24.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import "BIDTapTapsController.h"

@interface BIDTapTapsController ()

@end

@implementation BIDTapTapsController

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
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap1)];
    singleTap.numberOfTouchesRequired = 1;
    singleTap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singleTap];
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap2)];
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:doubleTap];
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    UITapGestureRecognizer *tripleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap3)];
    tripleTap.numberOfTapsRequired = 3;
    tripleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:tripleTap];
    [doubleTap requireGestureRecognizerToFail:tripleTap];
    
    UITapGestureRecognizer *quadrupleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap4)];
    quadrupleTap.numberOfTapsRequired = 4;
    quadrupleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:quadrupleTap];
    [tripleTap requireGestureRecognizerToFail:quadrupleTap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tap1
{
    self.singleLabel.text = @"Single Tap Detected";
    [self performSelector:@selector(erase:) withObject:self.singleLabel afterDelay:2];
}

- (void)tap2
{
    self.doubleLabel.text = @"Double Tap Detected";
    [self performSelector:@selector(erase:) withObject:self.doubleLabel afterDelay:2];
}

- (void)tap3
{
    self.tripleLabel.text = @"Triple Tap Detected";
    [self performSelector:@selector(erase:) withObject:self.tripleLabel afterDelay:2];
}

- (void)tap4
{
    self.quadrupleLabel.text = @"Quadruple Tap Detected";
    [self performSelector:@selector(erase:) withObject:self.quadrupleLabel afterDelay:2];
}

- (void)erase:(UILabel *)label
{
    label.text = @"";
}

@end
