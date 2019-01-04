//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "C5.h"

@implementation C5

+ (void)load{
    [super load];
    NSLog(@"C5");
}

- (void)log
{
    [super log];
    NSLog(@"C5 -- log");
}

@end
