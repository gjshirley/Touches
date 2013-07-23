//
//  BIDCheckMarkRecognizer.h
//  Touches
//
//  Created by guojin on 13-6-24.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDCheckMarkRecognizer : UIGestureRecognizer

@property (assign, nonatomic) CGPoint lastPreviousPoint;
@property (assign, nonatomic) CGPoint lastCurrentPoint;
@property (assign, nonatomic) CGFloat lineLengthSoFar;

@end
