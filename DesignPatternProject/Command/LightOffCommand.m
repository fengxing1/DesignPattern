//
//  LightOffCommand.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "LightOffCommand.h"
#import "SerialObject.h"
#import  <objc/runtime.h>

@implementation LightOffCommand
- (instancetype)initWithLight:(Light *)light {
    self = [super init];
    if (self) {
        self.light = light;
    }
    return self;
}

- (void)execute {
    [self.light lightOff];
}
SERIALIZE_CODER_DECODER()
@end
