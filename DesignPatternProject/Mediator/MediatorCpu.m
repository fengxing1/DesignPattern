//
//  MediatorCpu.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "MediatorCpu.h"
#import "MainBoard.h"

@implementation MediatorCpu
- (void)excute:(NSMutableString *)data {
    [data appendString:@" + 经过cpu处理"];
    [[MainBoard shareInstance] handleData:data dataSource:self];
}
@end
