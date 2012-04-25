//
//  CircularView.h
//  CircularPath
//
//  Created by  on 4/25/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircularView : UIView

@property (nonatomic, strong) UIBezierPath *circularPath;
@property (nonatomic, assign) float progress;

- (void)drawCircularWithEndPoint:(CGFloat)end;

@end
