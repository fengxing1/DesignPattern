//
//  MainBoard.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "MainBoard.h"
#import "MediatorCpu.h"
#import "CDDriver.h"
#import "VideoCard.h"
static MainBoard *mainBoard = nil;

@implementation MainBoard
+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (mainBoard == nil) {
            mainBoard = [[MainBoard alloc] init];
        }
    });
    return mainBoard;
}

- (void)handleData:(NSMutableString *)data dataSource:(id)source {
    NSLog(@"数据：%@",data);
    if ([source isKindOfClass:[CDDriver class]]) {
        MediatorCpu *cpu = [MediatorCpu new];
        [cpu excute:data];
    } else if ([source isKindOfClass:[MediatorCpu class]]) {
        VideoCard *videoCard = [VideoCard new];
        [videoCard palyerCD:data];
    }
}


@end
