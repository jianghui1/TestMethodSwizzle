//
//  P2.m
//  TestMethodSwizzle
//
//  Created by ys on 2018/1/4.
//  Copyright © 2018 mg. All rights reserved.
//

#import "P8.h"

#import <objc/runtime.h>

@implementation P8

+ (void)load{
    NSLog(@"P8");
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(log)),
                                   class_getInstanceMethod(self, @selector(cy_log)));
}

- (void)log
{
    NSLog(@"log");
}

- (void)cy_log
{
    NSLog(@"cy_log");
    [self cy_log];
}

@end
