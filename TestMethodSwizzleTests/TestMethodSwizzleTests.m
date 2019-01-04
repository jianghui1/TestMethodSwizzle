//
//  TestMethodSwizzleTests.m
//  TestMethodSwizzleTests
//
//  Created by ys on 2019/1/3.
//  Copyright © 2019 mg. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "P1.h"
#import "C1.h"
#import "P2.h"
#import "C2.h"
#import "P3.h"
#import "C3.h"
#import "P4.h"
#import "C4.h"
#import "P5.h"
#import "C5.h"
#import "P6.h"
#import "C6.h"
#import "P7.h"
#import "C7.h"
#import "P8.h"
#import "C8.h"
#import "P9.h"
#import "C9.h"

@interface TestMethodSwizzleTests : XCTestCase

@end

@implementation TestMethodSwizzleTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)test1
{
    P1 *p1 = [[P1 alloc] init];
    [p1 log];
    
    // 打印日志
    /*
     2019-01-04 14:30:49.924393+0800 TestMethodSwizzle[41830:1171574] cy_log
     2019-01-04 14:30:49.924545+0800 TestMethodSwizzle[41830:1171574] log
     */
}

- (void)test11
{
    C1 *c1 = [[C1 alloc] init];
    [c1 log];
    
    // 打印日志
    /*
     2019-01-04 14:31:41.150870+0800 TestMethodSwizzle[41876:1172421] cy_log
     2019-01-04 14:31:41.151062+0800 TestMethodSwizzle[41876:1172421] log
     */
}

- (void)test2
{
    P2 *p2 = [[P2 alloc] init];
    [p2 log];
    
    // 打印日志
    /*
     2019-01-04 14:35:45.203917+0800 TestMethodSwizzle[42124:1176051] C2
     2019-01-04 14:35:46.156888+0800 TestMethodSwizzle[42124:1176051] cy_log
     2019-01-04 14:35:46.157056+0800 TestMethodSwizzle[42124:1176051] log
     */
}

- (void)test22
{
    C2 *c2 = [[C2 alloc] init];
    [c2 log];
    
    // 打印日志
    /*
     2019-01-04 14:36:17.575144+0800 TestMethodSwizzle[42151:1176660] C2
     2019-01-04 14:36:18.327939+0800 TestMethodSwizzle[42151:1176660] cy_log
     2019-01-04 14:36:18.328086+0800 TestMethodSwizzle[42151:1176660] log
     */
}

- (void)test3
{
    P3 *p3 = [[P3 alloc] init];
    [p3 log];
    
    // 打印日志
    /*
     2019-01-04 14:39:55.724185+0800 TestMethodSwizzle[42361:1180047] P3
     2019-01-04 14:39:55.724871+0800 TestMethodSwizzle[42361:1180047] P3
     2019-01-04 14:39:55.725081+0800 TestMethodSwizzle[42361:1180047] C3
     2019-01-04 14:39:56.547522+0800 TestMethodSwizzle[42361:1180047] log
     */
}

- (void)test33
{
    C3 *c3 = [[C3 alloc] init];
    [c3 log];
    
    // 打印日志
    /*
     2019-01-04 14:40:28.221793+0800 TestMethodSwizzle[42392:1180643] P3
     2019-01-04 14:40:28.222474+0800 TestMethodSwizzle[42392:1180643] P3
     2019-01-04 14:40:28.222664+0800 TestMethodSwizzle[42392:1180643] C3
     2019-01-04 14:40:28.758676+0800 TestMethodSwizzle[42392:1180643] log
     */
}

- (void)test4
{
    P4 *p4 = [[P4 alloc] init];
    [p4 log];
    
    // 打印日志
    /*
     2019-01-04 14:43:48.547728+0800 TestMethodSwizzle[42579:1183469] P4
     2019-01-04 14:43:48.547941+0800 TestMethodSwizzle[42579:1183469] P4
     2019-01-04 14:43:48.548092+0800 TestMethodSwizzle[42579:1183469] C4
     2019-01-04 14:43:49.296572+0800 TestMethodSwizzle[42579:1183469] cy_log
     2019-01-04 14:43:49.296722+0800 TestMethodSwizzle[42579:1183469] C4 -- log
     */
}

- (void)test44
{
    C4 *c4 = [[C4 alloc] init];
    [c4 log];
    
    // 打印日志
    /*
     2019-01-04 14:45:05.075842+0800 TestMethodSwizzle[42638:1184538] P4
     2019-01-04 14:45:05.076060+0800 TestMethodSwizzle[42638:1184538] P4
     2019-01-04 14:45:05.076276+0800 TestMethodSwizzle[42638:1184538] C4
     2019-01-04 14:45:05.630284+0800 TestMethodSwizzle[42638:1184538] log
     */
}

- (void)test5
{
    P5 *p5 = [[P5 alloc] init];
    [p5 log];
    
    // 打印日志
    /*
     2019-01-04 14:50:10.030135+0800 TestMethodSwizzle[42886:1187884] P5
     2019-01-04 14:50:10.030344+0800 TestMethodSwizzle[42886:1187884] P5
     2019-01-04 14:50:10.030502+0800 TestMethodSwizzle[42886:1187884] C5
     019-01-04 14:50:10.841267+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841420+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841508+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841585+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841678+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841745+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841813+0800 TestMethodSwizzle[42886:1187884] cy_log
     2019-01-04 14:50:10.841879+0800 TestMethodSwizzle[42886:1187884] cy_log
     ... 无限循环
     */
}

- (void)test55
{
    C5 *c5 = [[C5 alloc] init];
    [c5 log];
    
    // 打印日志
    /*
     2019-01-04 14:51:02.086052+0800 TestMethodSwizzle[42923:1188558] P5
     2019-01-04 14:51:02.086300+0800 TestMethodSwizzle[42923:1188558] P5
     2019-01-04 14:51:02.086474+0800 TestMethodSwizzle[42923:1188558] C5
     2019-01-04 14:51:02.910528+0800 TestMethodSwizzle[42923:1188558] log
     */
}

- (void)test6
{
    P6 *p6 = [[P6 alloc] init];
    [p6 log];
    
    // 打印日志
    /*
     2019-01-04 14:59:05.455644+0800 TestMethodSwizzle[43263:1193332] P6
     2019-01-04 14:59:05.455851+0800 TestMethodSwizzle[43263:1193332] C6
     2019-01-04 14:59:06.295442+0800 TestMethodSwizzle[43263:1193332] cy_log
     2019-01-04 14:59:06.295770+0800 TestMethodSwizzle[43263:1193332] log
     */
}

- (void)test66
{
    C6 *c6 = [[C6 alloc] init];
    [c6 log];
    
    // 打印日志
    /*
     2019-01-04 14:59:52.848316+0800 TestMethodSwizzle[43304:1194120] P6
     2019-01-04 14:59:52.848575+0800 TestMethodSwizzle[43304:1194120] C6
     2019-01-04 14:59:53.321274+0800 TestMethodSwizzle[43304:1194120] C6 -- log
     */
}

- (void)test7
{
    P7 *p7 = [[P7 alloc] init];
    [p7 log];
    
    // 打印日志
    /*
     2019-01-04 15:03:02.488361+0800 TestMethodSwizzle[43486:1196658] P7
     2019-01-04 15:03:02.488547+0800 TestMethodSwizzle[43486:1196658] P7
     2019-01-04 15:03:02.488732+0800 TestMethodSwizzle[43486:1196658] C7
     2019-01-04 15:03:03.371679+0800 TestMethodSwizzle[43486:1196658] cy_log
     2019-01-04 15:03:03.371844+0800 TestMethodSwizzle[43486:1196658] log
     */
}

- (void)test77
{
    C7 *c7 = [[C7 alloc] init];
    [c7 log];
    
    // 打印日志
    /*
     2019-01-04 15:03:31.248458+0800 TestMethodSwizzle[43521:1197293] P7
     2019-01-04 15:03:31.248605+0800 TestMethodSwizzle[43521:1197293] P7
     2019-01-04 15:03:31.248763+0800 TestMethodSwizzle[43521:1197293] C7
     2019-01-04 15:03:31.788730+0800 TestMethodSwizzle[43521:1197293] C7 -- cy_log
     2019-01-04 15:03:31.788890+0800 TestMethodSwizzle[43521:1197293] C7 -- log
     */
}

- (void)test8
{
    P8 *p8 = [[P8 alloc] init];
    [p8 log];
    
    // 打印日志
    /*
     2019-01-04 16:06:46.952819+0800 TestMethodSwizzle[46258:1232560] P8
     2019-01-04 16:06:46.960383+0800 TestMethodSwizzle[46258:1232560] C8
     2019-01-04 16:06:47.673991+0800 TestMethodSwizzle[46258:1232560] cy_log
     2019-01-04 16:06:47.674171+0800 TestMethodSwizzle[46258:1232560] log
     */
}

- (void)test88
{
    C8 *c8 = [[C8 alloc] init];
    [c8 log];
    
    // 打印日志
    /*
     2019-01-04 16:07:33.510610+0800 TestMethodSwizzle[46290:1233272] P8
     2019-01-04 16:07:33.518123+0800 TestMethodSwizzle[46290:1233272] C8
     2019-01-04 16:07:34.182573+0800 TestMethodSwizzle[46290:1233272] cy_log
     2019-01-04 16:07:34.182728+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.182821+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.182925+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183017+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183084+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183158+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183244+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183529+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183746+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.183947+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.184140+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.184332+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.186880+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.187209+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.187493+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.187827+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     2019-01-04 16:07:34.188097+0800 TestMethodSwizzle[46290:1233272] C8 -- cy_log
     ... 无限循环
     */
}

- (void)test9
{
    P9 *p9 = [[P9 alloc] init];
    [p9 log];
    
    // 打印日志
    /*
     2019-01-04 15:06:29.856458+0800 TestMethodSwizzle[43692:1199799] P9
     2019-01-04 15:06:29.857411+0800 TestMethodSwizzle[43692:1199799] P9
     2019-01-04 15:06:29.857576+0800 TestMethodSwizzle[43692:1199799] C9
     2019-01-04 15:06:30.686701+0800 TestMethodSwizzle[43692:1199799] cy_log
     2019-01-04 15:06:30.686872+0800 TestMethodSwizzle[43692:1199799] log
     */
}

- (void)test99
{
    C9 *c9 = [[C9 alloc] init];
    [c9 log];
    
    // 打印日志
    /*
     2019-01-04 15:07:02.796892+0800 TestMethodSwizzle[43718:1200375] P9
     2019-01-04 15:07:02.797921+0800 TestMethodSwizzle[43718:1200375] P9
     2019-01-04 15:07:02.798087+0800 TestMethodSwizzle[43718:1200375] C9
     2019-01-04 15:07:03.332852+0800 TestMethodSwizzle[43718:1200375] C9 -- cy_log
     2019-01-04 15:07:03.333016+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333204+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333294+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333401+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333487+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333559+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333628+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.333918+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.334161+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.334385+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.334627+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.334858+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.335089+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.335300+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.335502+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.335699+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.335895+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.336088+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.357983+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.358114+0800 TestMethodSwizzle[43718:1200375] cy_log
     2019-01-04 15:07:03.358274+0800 TestMethodSwizzle[43718:1200375] cy_log
     ... 无限循环
     */
}

@end
