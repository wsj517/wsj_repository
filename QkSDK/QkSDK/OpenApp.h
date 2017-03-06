//
//  OpenApp.h
//  QkSDK
//
//  Created by qk365 on 2016/11/23.
//  Copyright © 2016年 Hauler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OpenApp : NSObject

/**
 跳转app
 
 @param scheme 要跳转的app的scheme
 @param param  参数:app链接地址,key : appUrl
 */
+(BOOL)openAppWith:(NSString *)scheme andParam:(NSDictionary *)param;

@end
