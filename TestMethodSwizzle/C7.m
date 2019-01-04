//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "C7.h"

@implementation C7

+ (void)load{
    [super load];
    NSLog(@"C7");
}

- (void)log
{
    NSLog(@"C7 -- log");
}

- (void)cy_log
{
    NSLog(@"C7 -- cy_log");
    [self cy_log];
}

@end
