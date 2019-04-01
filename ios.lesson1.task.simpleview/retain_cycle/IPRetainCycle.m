//
//  IPRetainCycle.m
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import "IPRetainCycle.h"

@implementation IPRetainCycle

- (void) someMethod:(SomeBlock)callback {
    NSLog(@"callback");
    callback();
}

- (void) someMethodMore {
    NSLog(@"some method more");
}

- (void) dealloc {
    NSLog(@"dealooc called");
}


@end
