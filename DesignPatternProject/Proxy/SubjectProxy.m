//
//  SubjectProxy.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "SubjectProxy.h"


@implementation SubjectProxy
- (instancetype)initWithRealSubject:(RealSubject *)subject {
    self = [super init];
    if (self) {
        self.realSubject = subject;
    }
    return self;
}

- (NSString *)getName {
    NSLog(@"名字 %@",[self.realSubject getName]);
    return [self.realSubject getName];
    
}

- (NSInteger)getAge {
    NSLog(@"年龄：%ld",(long)[self.realSubject getAge]);
    return [self.realSubject getAge];
}

- (NSString *)getSex {
    if (!self.isReload) {
        [self reloadDB];
    }
    NSLog(@"性别：%@",[self.realSubject getSex]);
    return [self.realSubject getSex];
    
}

- (NSString *)getAddress {
    if (!self.isReload) {
        [self reloadDB];
    }
    NSLog(@"城市：%@",[self.realSubject getAddress]);
    return [self.realSubject getAddress];
    
}

- (NSString *)getCountry {
    if (!self.isReload) {
        [self reloadDB];
    }
    NSLog(@"城市：%@",[self.realSubject getCountry]);
    return [self.realSubject getCountry];
}

- (void)reloadDB {
    self.isReload = YES;
    //重新数据库请求数据 age address country
    self.realSubject.sex = @"男";
    self.realSubject.address = @"杭州市余杭区良睦路 1288号";
    self.realSubject.country = @"浙江 杭州";
}

- (void)getSimpleInfo {
    NSLog(@"查询数据库获取简单数据....");
    self.realSubject.name = @"张三";
    self.realSubject.sex = @"男";
    [self getName];
    [self getSex];
    
}

- (void)getCompleteInfo {
    NSLog(@"重新查询数据库获取全部数据....");
    [self getName];
    [self getSex];
    [self getCountry];
    [self getAddress];
    [self getAge];
}

@end
