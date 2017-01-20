//
//  CDPlayOffCommand.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "CDPlayOffCommand.h"
#import "SerialObject.h"
#import  <objc/runtime.h>

@implementation CDPlayOffCommand
- (instancetype)initWithPlayer:(CDPlayer *)player {
    self = [super init];
    if (self) {
        self.player = player;
    }
    return self;
}

- (void)execute {
    [self.player changeVolume:0];
    [self.player CDOff];
}

SERIALIZE_CODER_DECODER()

@end
