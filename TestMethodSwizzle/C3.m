//
//  C2.m
//  TestMethodSwizzle
//
//  Created by ys on 2019/1/4.
//  Copyright © 2019 mg. All rights reserved.
//

#import "C3.h"

@implementation C3

+ (void)load{
    [super load];
    NSLog(@"C3");
}

@end
