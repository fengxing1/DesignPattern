//
//  Factory.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/12.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "Factory.h"

@implementation Factory
- (Cpu *)createCpuWithType:(NSInteger)type {
    @throw ([NSException exceptionWithName:@"继承错误" reason:@"子类必须重写该方法" userInfo:nil]);
    return nil;
}
@end
