//
//  IPMultiInheritanceExample.h
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import <Foundation/Foundation.h>
@class IPSomeClassA, IPSomeClassB;

NS_ASSUME_NONNULL_BEGIN

@interface IPMultiInheritanceExample : NSObject {
    IPSomeClassA *someClassA;
    IPSomeClassB *someClassB;
}

- (id) initWith:(IPSomeClassA *)classA and:(IPSomeClassB *)classB;

@end

NS_ASSUME_NONNULL_END
