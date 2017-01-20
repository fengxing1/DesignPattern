//
//  CDPlayer.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "CDPlayer.h"
#import "SerialObject.h"
#import  <objc/runtime.h>

@implementation CDPlayer
- (void)CDOn {
    NSLog(@"CD播放器被打开");
}
- (void)CDOff {
    NSLog(@"CD播放器被关闭");
}

- (void)changeVolume:(NSInteger)volume {
    NSLog(@"CD 的声音设置为%ld",(long)volume);
}

SERIALIZE_CODER_DECODER()
@end
