//
//  BIDCheckController.m
//  Touches
//
//  Created by guojin on 13-6-24.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import "BIDCheckController.h"
#import "BIDCheckMarkRecognizer.h"

@interface BIDCheckController ()

@end

@implementation BIDCheckController

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
    
    BIDCheckMarkRecognizer *check = [[BIDCheckMarkRecognizer alloc] initWithTarget:self action:@selector(doCheck:)];
    [self.view addGestureRecognizer:check];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doCheck:(BIDCheckMarkRecognizer *)check
{
    self.label.text = @"CheckMark";
    [self performSelector:@selector(erase) withObject:nil afterDelay:2];
}

- (void)erase
{
    self.label.text = @"";
}

@end
