//
//  CircularPathViewController.m
//  CircularPath
//
//  Created by  on 4/25/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "CircularPathViewController.h"
#import "CircularView.h"

@interface CircularPathViewController()
{
    CircularView *circularView;
}
@end


@implementation CircularPathViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    circularView = [[CircularView alloc] initWithFrame:[self.view bounds]];
    circularView.progress = 0.0;
    [self.view addSubview:circularView];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:1/60
                                     target:self selector:@selector(animateView) userInfo:nil repeats:YES];
}

- (void)animateView
{
    circularView.progress = circularView.progress < 1.0 ? circularView.progress + 0.01 : 5.0;
    [circularView setNeedsDisplay];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
