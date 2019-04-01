//
//  IPStack.h
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPStack : NSObject
@property (assign,readonly) long size;

- (void) push:(id)element;
- (id) pop;
- (void) clear;
@end
