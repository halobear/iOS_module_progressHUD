//
//  NSObject+Hub.h
//  WeddingToB
//
//  Created by 蒋柯 on 15/11/10.
//  Copyright © 2015年 ymonke. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kSuccessDurtion 1.0
#define kFailDurtion 1

@class JKDataResponse;
@interface NSObject (Hub)

- (BOOL)checkDataResponse:(JKDataResponse *)response;

/**
 *  展示进度信息 (带圈圈)
 *
 *  @param message 展示信息
 */
- (void)showStatusString:(NSString *)message;

/**
 *  展示进度信息 (带时间)
 *
 *  @param message 展示信息
 *  @param duration 展示时间
 */
- (void)showStatusString:(NSString *)message duration:(NSTimeInterval)duration;

/**
 *  成功信息展示 (默认一秒消失)
 *
 *  @param successMessage 成功信息
 */
- (void)showSuccessMessage:(NSString *)successMessage;


/**
 *  展示信息 (不带圈圈,简单信息展示)
 *
 *  @param message 展示信息
 */
- (void)showMessage:(NSString *)message;

/**
 *  展示消失
 */
- (void)dismissHub;

/**
 *  展示信息 (不带圈圈,简单信息展示)
 *
 *  @param duration 消失时间
 */

- (void)dismissDuration:(NSTimeInterval)duration;

/**
 *  失败信息展示 (默认3秒消失)
 *
 *  @param failMessage 失败信息
 */
- (void)showFailMessage:(NSString *)failMessage;

@end
