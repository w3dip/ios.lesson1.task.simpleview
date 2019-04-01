//
//  IPMultiInheritanceExample.m
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import "IPMultiInheritanceExample.h"
#import "IPSomeClassA.h"
#import "IPSomeClassB.h"

@implementation IPMultiInheritanceExample

- (id) initWith:(IPSomeClassA *)classA and:(IPSomeClassB *)classB {
        if (self=[super init]) {
            someClassA = classA;
            someClassB = classB;
        }
        return self;
    }

- (NSMethodSignature*) methodSignatureForSelector:(SEL)selector
{
    NSMethodSignature* signature = [super methodSignatureForSelector:selector];
    
    if (!signature) {
        signature = [someClassA methodSignatureForSelector:selector];
        if (!signature) {
            signature = [someClassB methodSignatureForSelector:selector];
        }
    }    
    
    return signature;
}

- (void) forwardInvocation:(NSInvocation *)anInvocation {
    if ([someClassA respondsToSelector:[anInvocation selector]])
        [anInvocation invokeWithTarget:someClassA];
    else if ([someClassB respondsToSelector:[anInvocation selector]])
        [anInvocation invokeWithTarget:someClassB];
    else
        [super forwardInvocation:anInvocation];
}
@end
