//
//  IPRetainCycle.h
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SomeBlock)(void);

NS_ASSUME_NONNULL_BEGIN

@interface IPRetainCycle : NSObject
@property (copy, nonatomic) SomeBlock block;

- (void) someMethod:(SomeBlock)callback;
- (void) someMethodMore;

@end

NS_ASSUME_NONNULL_END
