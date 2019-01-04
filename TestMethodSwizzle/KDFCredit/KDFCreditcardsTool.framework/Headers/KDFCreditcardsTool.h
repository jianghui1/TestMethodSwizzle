//
//  KDFCreditcardsTool.h
//  KDFCreditcardsTool
//
//  Created by ChenYong on 2018/8/6.
//  Copyright © 2018 samoyed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ErrorDefine.h"

typedef enum KDFServerMode {
    KDFServerModeProduct = 0,    //正式的生产环境，默认配置
    KDFServerModeStandTest,      //测试环境
    KDFServerModeDevelopment,    //开发环境
} KDFServerMode;

@interface KDFCreditcardsTool : NSObject

/**
 奖金比例 0~100
 */
@property (nonatomic, assign) float bonusRate;

/**
 分配给第三方的app key
 建议在App启动后, 在application:didFinishLaunchingWithOptions:中设置
 */
@property (nonatomic, copy) NSString *appKey;

/**
 用于接收和处理用户在信用卡页面点击分享等的操作
 */
@property (nonatomic, copy) void(^userDidClickedHandler)(NSString *strAction, NSString *strParam);

/**
 用于处理用户的登录请求，登录成功后要调用loginSucceedHandler
 */
@property (nonatomic, copy) void(^userDidWantToLoginHandler)(dispatch_block_t loginSucceedHandler);

/**
 用于跳转到信用卡首页，将信用卡首页放在一个独立的tab中的App才需要设置该属性，便于SDK在部分页面直接切换到独立的信用卡首页
 */
@property (nonatomic, copy) dispatch_block_t jumpToCreditcardsHomeHandler;

/**
 设置SDK的使用环境，默认是正式的生产环境
 */
+ (void)setServerMode:(KDFServerMode)mode;

+ (KDFServerMode)serverMode;

+ (instancetype)sharedInstance;

+ (NSString *)currentH5Domain;

/**
 查询当前用户是否已经登录
 @param strUserId 联合登录时你们用来生成当前用户的user token的user Id
 */
- (BOOL)hasLoginUser:(NSString *)strUserId;

/**
 登录指定用户
 同一时间只能有一个用户处于登录状态

 @param strLoginToken 用于联合登录的token，应该请求你们自己的后台获取
 @param finishHandler 登录完成的回调
 */
- (void)loginWithToken:(NSString *)strLoginToken finishHandler:(void(^)(BOOL bLoginSucceed, NSString *strErrorCode, NSString *strErrorInfo))finishHandler;

/**
 当前用户退出登录
 */
- (void)logout;

/**
 直接得到信用卡首页，主要用于在tab中使用信用卡首页
 */
- (UIViewController *)creditcardsHomePage;

/**
 打开信用卡首页
 */
- (BOOL)pushCreditcardsHomePageInNav:(UINavigationController *)navCtl;

/**
 打开提现页面
 */
- (BOOL)pushExtractPageInNav:(UINavigationController *)navCtl;

/**
 打开订单页面
 */
- (BOOL)pushOrdersPageInNav:(UINavigationController *)navCtl;

/**
 打开我的关注页面
 */
- (BOOL)pushCardsShopPageInNav:(UINavigationController *)navCtl;

/**
 打开银行卡管理页面
 */
- (BOOL)pushMyCardsPageInNav:(UINavigationController *)navCtl;

/**
 获取用户的订单列表
 
 每个订单的信息存储在一个字典中，字典中有以下key：
 id：信用卡记录ID
 bankCode：银行编码
 bankName：银行名称
 cardName：信用卡名称
 cardIcon：信用卡图标
 bankIcon：银行图标
 custNo：客户号
 custName：姓名
 applyStatus：申请状态:001-待查询，002-审核中，003-爬虫审核通过，004-爬虫审核拒绝
 applyDatetime：申请时间
 bonus：佣金奖励
 crawId：爬取Id

 @param finishHandler 获取结束的回调
 */
- (void)fetchUserOrderList:(void(^)(BOOL bSucceed, NSArray <NSDictionary *>*arrayOrderInfos, NSString *strErrorCode, NSString *strErrorInfo))finishHandler;

/**
 打开指定订单的进度页面

 @param dicOrderInfo 订单信息，来自于获取用户的订单列表这个接口返回的结果
 */
- (BOOL)pushProgressPageForOrder:(NSDictionary *)dicOrderInfo inNav:(UINavigationController *)navCtl;

@end
