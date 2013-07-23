//
//  BIDCheckMarkRecognizer.m
//  Touches
//
//  Created by guojin on 13-6-24.
//  Copyright (c) 2013年 guojin. All rights reserved.
//

#import "BIDCheckMarkRecognizer.h"
#import "CGPointUtils.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

#define kMinimumCheckMarkAngle    50
#define kMaximumCheckMarkAngle    135
#define kMinimumCheckMarkLength   10

@implementation BIDCheckMarkRecognizer

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    self.lastPreviousPoint = point;
    self.lastCurrentPoint = point;
    self.lineLengthSoFar = 0.0f;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    
    CGPoint previousPoint = [touch previousLocationInView:self.view];
    CGPoint currentPoint = [touch locationInView:self.view];
    
    CGFloat angle = angleBetweenLines(self.lastPreviousPoint, self.lastCurrentPoint, previousPoint, currentPoint);
    if (angle >= kMinimumCheckMarkAngle && angle <= kMaximumCheckMarkAngle && self.lineLengthSoFar >= kMinimumCheckMarkLength)
    {
        self.state = UIGestureRecognizerStateEnded;
    }
    self.lineLengthSoFar += distanceBetweenPoints(previousPoint, currentPoint);
    self.lastPreviousPoint = previousPoint;
    self.lastCurrentPoint = currentPoint;
}

@end
