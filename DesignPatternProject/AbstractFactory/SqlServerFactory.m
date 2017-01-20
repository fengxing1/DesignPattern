//
//  SqlServerFactory.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "SqlServerFactory.h"
#import "SqlServerUser.h"

@implementation SqlServerFactory
- (IUser *)createUser {
    return [SqlServerUser new];
}
@end
