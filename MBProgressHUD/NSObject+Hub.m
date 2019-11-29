//
//  NSObject+Hub.m
//  WeddingToB
//
//  Created by 蒋柯 on 15/11/10.
//  Copyright © 2015年 ymonke. All rights reserved.
//

#import "NSObject+Hub.h"
#import <UIKit/UIKit.h>
#import "SVProgressHUD.h"
#import <objc/message.h>


static void *HudVisibleKey = &HudVisibleKey;

@implementation NSObject (Hub)

- (BOOL)hudVisible
{
    id hudVisible = objc_getAssociatedObject(self, HudVisibleKey);
    if (hudVisible) {
        return [hudVisible boolValue];
    }
    return NO;
}

- (void)setHudVisible:(BOOL)hudVisible
{
    objc_setAssociatedObject(self, HudVisibleKey, @(hudVisible), OBJC_ASSOCIATION_RETAIN);
}

- (BOOL)checkDataResponse:(JKDataResponse *)response
{
    return NO;
}

- (void)showAlert:(NSString *)title message:(NSString *)message{
   
}

/**
 *  展示进度信息 (带圈圈)
 *
 *  @param message 展示信息
 */
- (void)showStatusString:(NSString *)message{
    
    [SVProgressHUD showWithStatus:message];
    
}

/**
 *  展示进度信息 (带时间)
 *
 *  @param message 展示信息
 *  @param duration 展示时间
 */
- (void)showStatusString:(NSString *)message duration:(NSTimeInterval)duration{
    
    
    [UIView showStatusString:message];
    
    [SVProgressHUD dismissWithDelay:duration];
    
}

/**
 *  展示信息 (不带图片,简单信息展示)
 *
 *  @param message 展示信息
 */
- (void)showMessage:(NSString *)message{
    
    [SVProgressHUD setInfoImage:nil];
    
    [SVProgressHUD showInfoWithStatus:message];
}

/**
 *  展示消失
 */
- (void)dismissHub{
    
    [SVProgressHUD dismiss];
}

/**
 *  展示消失
 */

- (void)dismissDuration:(NSTimeInterval)duration
{
    [SVProgressHUD dismissDuration:duration];
}
/**
 *  成功信息展示
 *
 *  @param successMessage 成功信息
 */
- (void)showSuccessMessage:(NSString *)successMessage{
    
    
    [SVProgressHUD setMinimumDismissTimeInterval:kSuccessDurtion];
    
    [SVProgressHUD setMaximumDismissTimeInterval:2.0];
    
    [SVProgressHUD showSuccessWithStatus:successMessage];
    
}

/**
 *  失败信息展示 (默认3秒消失)
 *
 *  @param failMessage 失败信息
 */
- (void)showFailMessage:(NSString *)failMessage{
    

    [SVProgressHUD setMinimumDismissTimeInterval:kFailDurtion];
    
    [SVProgressHUD showErrorWithStatus:failMessage];
    
}

@end
