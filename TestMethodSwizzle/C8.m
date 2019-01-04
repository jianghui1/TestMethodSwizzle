//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2018/1/4.
//  Copyright © 2018 mg. All rights reserved.
//

#import "C8.h"

@implementation C8

+ (void)load{
    NSLog(@"C8");
}

- (void)log
{
    [super log];
    NSLog(@"C8 -- log");
}

- (void)cy_log
{
    NSLog(@"C8 -- cy_log");
    [self cy_log];
}

@end
