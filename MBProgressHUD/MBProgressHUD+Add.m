//
//  MBProgressHUD+Add.m
//
//  Created by mj on 13-4-18.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "MBProgressHUD+Add.h"
#import "HBInvitation-Swift.h"

@implementation MBProgressHUD (Add)

+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
   
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = text;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    hud.mode = MBProgressHUDModeCustomView;
    
    hud.removeFromSuperViewOnHide = YES;
    
    [hud hide:YES afterDelay:1.0];
}

+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    hud.removeFromSuperViewOnHide = YES;
    hud.dimBackground = NO;
    
   NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
   NSMutableArray *array = [NSMutableArray array];
   for (NSUInteger i = 0; i < 21 ; i++) {
       NSString *path = [currentBundle pathForResource:[NSString stringWithFormat:@"loading_00%zd", i] ofType:nil inDirectory:@"MBProgressHUD.bundle"];
       [array addObject:ImageNamed(path)];
   }
    UIImageView *cusImageV = [[UIImageView alloc] init];
    cusImageV.animationImages = array;
    cusImageV.animationDuration = 0.8;
    cusImageV.animationRepeatCount = NSIntegerMax;
    [cusImageV startAnimating];
    cusImageV.frame = CGRectMake(0, 0, 35, 35);
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = cusImageV;
    hud.opacity = 0;
    
    return hud;
}
@end
