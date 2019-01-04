//
//  P2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "P4.h"

#import <objc/runtime.h>

@implementation P4

+ (void)load{
    NSLog(@"P4");
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
