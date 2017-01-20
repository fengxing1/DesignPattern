//
//  AMDFactory.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "AMDFactory.h"
#import "AmdCpu112.h"
#import "AmdCpu113.h"

@implementation AMDFactory
- (Cpu *)createCpuWithType:(NSInteger)type {
    Cpu *cpu = nil;
    if (type == 112) {
        cpu = [AmdCpu112 new];
    } else if (type == 113) {
        cpu = [AmdCpu113 new];
    }
    return cpu;
}

@end
