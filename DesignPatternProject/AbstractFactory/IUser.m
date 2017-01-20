//
//  IUser.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "IUser.h"

@implementation IUser
- (void)insert:(NSString *)user {
    @throw [NSException exceptionWithName:@"继承错误" reason:@"子类没有实现父类方法" userInfo:nil];
}
- (void)getUser {
    @throw [NSException exceptionWithName:@"继承错误" reason:@"子类没有实现父类方法" userInfo:nil];
}

@end
