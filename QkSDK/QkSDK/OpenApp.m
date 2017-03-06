//
//  OpenApp.m
//  QkSDK
//
//  Created by qk365 on 2016/11/23.
//  Copyright © 2016年 Hauler. All rights reserved.
//

#import "OpenApp.h"
#import <UIKit/UIKit.h>

@implementation OpenApp

+(BOOL)openAppWith:(NSString *)scheme andParam:(NSDictionary *)param
{
    NSString *str = @"";
    if (param) {
        
        NSData *data = [NSJSONSerialization dataWithJSONObject:param options:NSJSONWritingPrettyPrinted error:nil];
        str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    NSString *appUrl = [NSString stringWithFormat:@"%@://%@",scheme,str];
    NSString *dataStr = [appUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:dataStr];
    
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        
        [[UIApplication sharedApplication] openURL:url];
        
        return YES;
    } else {
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[param objectForKey:@"appUrl"]]];
        
        return NO;
    }
}

@end
