//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "C6.h"

@implementation C6

+ (void)load{
    NSLog(@"C6");
}

- (void)log
{
    NSLog(@"C6 -- log");
}

- (void)cy_log
{
    NSLog(@"C6 -- cy_log");
    [self cy_log];
}

@end
