//
//  IntelFactory.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/12.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "IntelFactory.h"
#import "InterCpu117.h"
#import "InterCpu753.h"

@implementation IntelFactory
- (Cpu *)createCpuWithType:(NSInteger)type {
    Cpu *cpu = nil;
    if (type == 117) {
        cpu = [InterCpu117 new];
    } else {
        cpu = [InterCpu753 new];
    }
    
    return cpu;
}

@end
