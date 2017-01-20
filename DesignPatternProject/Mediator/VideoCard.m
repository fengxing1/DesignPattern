//
//  VideoCard.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "VideoCard.h"
#import "MainBoard.h"

@implementation VideoCard
- (void)palyerCD:(NSMutableString *)data {
    [data appendString:@" + 经过播放器处理"];
    [[MainBoard shareInstance] handleData:data dataSource:self];
}

@end
