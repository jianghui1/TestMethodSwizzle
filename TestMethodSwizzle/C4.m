//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "C4.h"

@implementation C4

+ (void)load{
    [super load];
    NSLog(@"C4");
}

- (void)log
{
    NSLog(@"C4 -- log");
}

@end
