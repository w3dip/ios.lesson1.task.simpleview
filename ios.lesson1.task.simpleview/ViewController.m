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

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText:slider.value];
}

- (IBAction)changeSliderValue:(UISlider *)sender {
    [self setText:sender.value];
}

- (IBAction)aproveAggrement:(id)sender {
}

- (void) setText:(float)value {
    [sliderValue setText:[NSString stringWithFormat:@"%.0f", value]];
}

@end
