//
//  IPQueue.m
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import "IPQueue.h"

@interface IPQueue()
@property (strong) NSMutableArray *data;
@end

@implementation IPQueue

- (instancetype) init {
    if (self = [super init]){
        _data = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) offer:(id)element {
    [self.data addObject:element];
}

- (id) poll {
    id begin = [self.data objectAtIndex:0];
    if (begin != nil) {
        [self.data removeObjectAtIndex:0];
    }
    return begin;
}

@end
