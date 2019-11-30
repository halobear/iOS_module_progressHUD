//
//  HBAlertView.m
//  HaloBear
//
//  Created by monkey on 16/12/14.
//  Copyright © 2016年 刘～丹. All rights reserved.
//

#import "HBAlertUtils.h"
//#import "BlocksKit+UIKit.h"
#import "SVProgressHUD.h"
#import "MBProgressHUD+Add.h"

@implementation HBAlertUtils

#pragma mark - hub
// ----------------------------------------------------------------------
// -------------------------hub---------------------------------
// ----------------------------------------------------------------------

/**
 *  展示进度信息 (带圈圈)
 *
 *  @param message 展示信息
 */

+(void)hb_showLodingAlertView:(NSString *)message inView:(UIView *)view
{
    [view showStatusString:message];
    
}

+(void)hb_hideLoadingAlertView:(UIView *)view
{
    [view dismissHub];
}
/**
 *  展示进度信息 (带时间)
 *
 *  @param message 展示信息
 *  @param duration 展示时间
 */
+ (void)hb_showStatusString:(NSString *)message inView:(UIView *)view duration:(NSTimeInterval)duration{
    
    
    [self hb_showLodingAlertView:message inView:view];
    
    [view dismissDuration:duration];
    
}

/**
 *  展示信息 (不带图片,简单信息展示)
 *
 *  @param message 展示信息
 */
+ (void)hb_showMessage:(NSString *)message inView:(UIView *)view{
    
    [view showMessage:message];
}

/**
 *  成功信息展示
 *
 *  @param successMessage 成功信息
 */
+ (void)hb_showSuccessMessage:(NSString *)successMessage inView:(UIView *)view{
    
    [MBProgressHUD showSuccess:successMessage toView:view];

//    [view showSuccessMessage:successMessage];
}

/**
 *  失败信息展示 (默认3秒消失)
 *
 *  @param failMessage 失败信息
 */
+ (void)hb_showFailMessage:(NSString *)failMessage inView:(UIView *)view{
    
    [MBProgressHUD showError:failMessage toView:view];
    
}


@end
