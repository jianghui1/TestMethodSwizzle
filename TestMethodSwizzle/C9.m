//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "C9.h"

@implementation C9

+ (void)load{
    [super load];
    NSLog(@"C9");
}

- (void)log
{
    [super log];
    NSLog(@"C9 -- log");
}

- (void)cy_log
{
    NSLog(@"C9 -- cy_log");
    [self cy_log];
}

@end
