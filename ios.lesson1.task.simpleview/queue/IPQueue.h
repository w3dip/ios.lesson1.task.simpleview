//
//  IPQueue.h
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 01/04/2019.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPQueue : NSObject
- (void) offer:(id)element;
- (id) poll;
@end
