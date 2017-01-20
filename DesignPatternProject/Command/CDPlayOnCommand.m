//
//  CDPlayOnCommand.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "CDPlayOnCommand.h"
#import "SerialObject.h"
#import  <objc/runtime.h>

@implementation CDPlayOnCommand
- (instancetype)initWithPlayer:(CDPlayer *)player {
    self = [super init];
    if (self) {
        self.cdPalyer = player;
    }
    return self;
}

- (void)execute {
    [self.cdPalyer CDOn];
    [self.cdPalyer changeVolume:10];
}

SERIALIZE_CODER_DECODER()

@end
