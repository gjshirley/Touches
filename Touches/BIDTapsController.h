//
//  BIDTapsController.h
//  Touches
//
//  Created by guojin on 13-6-23.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDTapsController : BIDViewController

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapsLabel;
@property (weak, nonatomic) IBOutlet UILabel *touchesLabel;

- (void)updateLabelsFromTouches:(NSSet *)touches;

@end
