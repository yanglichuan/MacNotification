//
//  Person.h
//  05-通知
//
//  Created by apple on 14-8-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;

-(void) personXq:(NSString *)noti;

@end
