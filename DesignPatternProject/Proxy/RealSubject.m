//
//  RealSubject.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "RealSubject.h"

@implementation RealSubject
- (NSString *)getName {
    return self.name;
}
- (NSInteger)getAge {
    return self.age;
}
- (NSString *)getSex {
    return self.sex;
}
- (NSString *)getAddress {
    return self.address;
}
- (NSString *)getCountry {
    return self.country;
}


@end
