//
//  CircularView.m
//  CircularPath
//
//  Created by  on 4/25/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "CircularView.h"

#define DEGREE_TO_RADIANS(degrees) ((M_PI * degrees)/ 180)

@implementation CircularView

@synthesize circularPath, progress;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (UIBezierPath *)createCircularPathWithEndPoint:(CGFloat)endPoint{
    NSNumber *end = [NSNumber numberWithFloat:endPoint*M_PI];
    UIBezierPath *aPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100.0, 100.0) 
                                                         radius:75.0 
                                                     startAngle:3*M_PI_2 
                                                       endAngle:[end floatValue]
                                                      clockwise:YES];
    return aPath;
}

- (void)drawCircularWithEndPoint:(CGFloat)end
{
    self.circularPath = [self createCircularPathWithEndPoint:end];
    [[UIColor whiteColor] setStroke];
    
    CGContextRef aRef = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(aRef, 0, 0);
    
    self.circularPath.lineWidth = 5;
    
    [self.circularPath stroke];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    NSLog(@"%.2f",self.progress);
    [self drawCircularWithEndPoint:self.progress];
    //[self drawCircularWithEndPoint:0.5];
    //[self drawCircularWithEndPoint:0.5];
//    CGFloat endPoint = 0.5;
//    for (NSUInteger i=0; i<endPoint*100; ++i) {
//        [self drawCircularWithEndPoint:[[NSNumber numberWithFloat:i/100] floatValue]];
//    }
}


@end
