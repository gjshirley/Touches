//
//  BIDTapTapsController.h
//  Touches
//
//  Created by guojin on 13-6-24.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDTapTapsController : BIDViewController

@property (weak, nonatomic) IBOutlet UILabel *singleLabel;
@property (weak, nonatomic) IBOutlet UILabel *doubleLabel;
@property (weak, nonatomic) IBOutlet UILabel *tripleLabel;
@property (weak, nonatomic) IBOutlet UILabel *quadrupleLabel;

- (void)tap1;
- (void)tap2;
- (void)tap3;
- (void)tap4;
- (void)erase:(UILabel *)label;

@end
