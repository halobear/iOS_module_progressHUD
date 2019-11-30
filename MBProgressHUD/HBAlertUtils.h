//
//  HBAlertView.h
//  HaloBear
//
//  Created by monkey on 16/12/14.
//  Copyright © 2016年 刘～丹. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSObject+Hub.h"

/**
 UIAlertView
 UIActionSheet
 UIAlertController
 的封装
 基于BlocksKit
 */

typedef void(^HBHandlerBlock)(NSInteger buttonIndex);
typedef void(^HBHandlerVoidBlock)(void);

//#define kSuccessDurtion 1
//#define kFailDurtion 3



@interface HBAlertUtils : NSObject

/**
 *  展示进度信息 (带圈圈)
 *
 *  @param message 展示信息
 */
+ (void)hb_showLodingAlertView:(NSString *)message inView:(UIView*)view;

/**
 *  展示消失
 */

+ (void)hb_hideLoadingAlertView:(UIView*)view;

/**
 *  展示进度信息 (带时间)
 *
 *  @param message 展示信息
 *  @param duration 展示时间
 */
+ (void)hb_showStatusString:(NSString *)message inView:(UIView*)view duration:(NSTimeInterval)duration;

/**
 *  成功信息展示 (默认一秒消失)
 *
 *  @param successMessage 成功信息
 */
+ (void)hb_showSuccessMessage:(NSString *)successMessage inView:(UIView*)view;

/**
 *  展示信息 (不带圈圈,简单信息展示)
 *
 *  @param message 展示信息
 */
+ (void)hb_showMessage:(NSString *)message inView:(UIView*)view;

///**
// *  展示消失
// */
//+ (void)hb_dismissinView;
//
/**
 *  失败信息展示 (默认3秒消失)
 *
 *  @param failMessage 失败信息
 */
+ (void)hb_showFailMessage:(NSString *)failMessage inView:(UIView*)view;

@end
