//
//  main.m
//  05-通知
//
//  Created by apple on 14-8-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "XQCompany.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //初始化两个机构
        XQCompany *za = [[XQCompany alloc]init];
        za.name = @"珍爱网";
        
        
        XQCompany *sj = [[XQCompany alloc]init];
        sj.name = @"世纪佳缘";
        
        
        //初始化3个人类
        
        Person *zhangsan = [[Person alloc]init];
        zhangsan.name = @"张三";
        
        Person *lishishi = [[Person alloc]init];
        lishishi.name = @"李师师";
        
        Person *yeren = [[Person alloc]init];
        yeren.name = @"野人";
        
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        
        //3.监听
        
        //addObserver :监听者
        //selector : 回调的方法
        //name :监听通知的名称  nil 所有的通知名称
        //object:发布者 nil  所有发布者
        [center addObserver:zhangsan selector:@selector(personXq:) name:nil object:za];
        
//        [center addObserver:yeren selector:@selector(personXq:) name:nil object:nil];
//        
//        [center addObserver:lishishi selector:@selector(personXq:) name:@"shijijiayuan" object:sj];
        
        //4.发布
        //postNotificationName:通知的名称
        //object: 发布者
        //userinfo : 额外信息
        [center postNotificationName:@"zhenaiwang"
                              object:za
                            userInfo:@{@"title":@"新来了一批美女",
                                       @"info":@"........."}];
        
        [center postNotificationName:@"shijijiayuan"
                              object:sj
                            userInfo:@{@"title":@"新上市一批帅哥",
                                       @"info":@"........."}];
        
        
        
        
    }
    return 0;
}

