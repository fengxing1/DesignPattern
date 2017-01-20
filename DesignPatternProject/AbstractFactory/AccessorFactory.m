//
//  AccessorFactory.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "AccessorFactory.h"
#import "AccessUser.h"

@implementation AccessorFactory
- (IUser *)createUser {
    IUser *user = [AccessUser new];
    return user;
}
@end
