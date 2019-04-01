//
//  ViewController.m
//  ios.lesson1.task.simpleview
//
//  Created by Admin on 2019-03-29.
//  Copyright © 2019 w3dip. All rights reserved.
//

#import "ViewController.h"
#import "stack/IPStack.h"
#import "queue/IPQueue.h"
#import "inheritance/IPMultiInheritanceExample.h"
#import "inheritance/IPSomeClassA.h"
#import "inheritance/IPSomeClassB.h"
#import "retain_cycle/IPRetainCycle.h"


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setText:self.slider.value];
    [self showComment:self.licenseAggrement.on];
}

- (IBAction)changeSliderValue:(UISlider *)sender {
    [self setText:sender.value];
}

- (IBAction)aproveAggrement:(UISwitch *)sender {
    [self showComment:sender.on];
}

- (void) setText:(float)value {
    [self.sliderValue setText:[NSString stringWithFormat:@"%.0f", value]];
}

- (void) showComment:(BOOL)isVisible {
    self.comment.hidden = !isVisible;
}

- (IBAction) testStack:(id)sender {
    IPStack *stack = [[IPStack alloc] init];
    [stack push:@"Кошка"];
    [stack push:@"Собака"];
    [stack push:@"Лошадь"];
    [stack push:@"Слон"];
    
    NSLog(@"%ld",stack.size);
    
    for (int i = 0 ; i < 2; i++) {
        NSString *topValue = [stack pop];
    
        NSLog(@"Взял значение =  %@", topValue);
    }
    
    NSLog(@"%ld",stack.size);
    
    [stack clear];
    
    NSLog(@"Пустой стек = %ld",stack.size);
}

- (IBAction) testQueue:(id)sender {
    IPQueue *queue = [[IPQueue alloc] init];
    [queue offer:@"Кошка"];
    [queue offer:@"Собака"];
    [queue offer:@"Лошадь"];
    [queue offer:@"Слон"];
    
    NSLog(@"%@",queue.poll);
    NSLog(@"%@",queue.poll);
    NSLog(@"%@",queue.poll);
}

- (IBAction) testInheritance:(id)sender {
    IPSomeClassA *classA = [[IPSomeClassA alloc] init];
    IPSomeClassB *classB = [[IPSomeClassB alloc] init];
    IPMultiInheritanceExample *inheritance = [[IPMultiInheritanceExample alloc] initWith:classA and:classB];
    [inheritance performSelector:@selector(someMethodA)];
    [inheritance performSelector:@selector(someMethodB)];
}

- (IBAction)testRetainCycle:(id)sender {
    IPRetainCycle *retainCycleExample = [[IPRetainCycle alloc] init];
    retainCycleExample.block = ^{
        NSLog(@"callback run");
        [retainCycleExample someMethodMore];
    };
    [retainCycleExample someMethod:retainCycleExample.block];
    
    //Чтобы избежать retain cycle надо сделать __weak ссылку на retainCycleExample
    /*__weak IPRetainCycle *retainCycleEscape = retainCycleExample;
    retainCycleExample.block = ^{
        NSLog(@"callback run");
        [retainCycleEscape someMethodMore];
    };
    [retainCycleExample someMethod:retainCycleExample.block];*/
}

@end
