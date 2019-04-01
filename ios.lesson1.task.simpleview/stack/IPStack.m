//
//  IPStack.m
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import "IPStack.h"

@interface IPStack()
@property (strong) NSMutableArray *data;
@end

@implementation IPStack

- (id) init {
    if (self=[super init]){
        _data = [[NSMutableArray alloc] init];
        _size = 0;
    }
    return self;
}

- (void) push:(id)element {
    [self.data addObject:element];
    _size++;
}

- (id) pop {
    id obj = nil;
    if ([self.data count] > 0){
        obj = [self.data lastObject];
        [self.data removeLastObject];
        _size = self.data.count;
    }
    return obj;
}

- (void) clear {
    [self.data removeAllObjects];
    _size = 0;
}
@end
