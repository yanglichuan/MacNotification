//
//  Person.m
//  05-通知
//
//  Created by apple on 14-8-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)personXq:(NSString *)noti
{
    
    NSLog(@"----------%@",noti.class);
    
//    NSLog(@"%@ %@：%@",self.name,noti.name,noti.userInfo[@"title"]);
    
}

@end
