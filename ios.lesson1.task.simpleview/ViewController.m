//
//  ViewController.m
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 2019-03-29.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@end

@implementation ViewController
@synthesize sliderValue;
@synthesize slider;
@synthesize licenseAggrement;
@synthesize comment;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText:slider.value];
    [self showComment:licenseAggrement.on];
}

- (IBAction)changeSliderValue:(UISlider *)sender {
    [self setText:sender.value];
}

- (IBAction)aproveAggrement:(UISwitch *)sender {
    [self showComment:sender.on];
}

- (void) setText:(float)value {
    [sliderValue setText:[NSString stringWithFormat:@"%.0f", value]];
}

- (void) showComment:(BOOL)isVisible {
    comment.hidden = !isVisible;
}

@end
