//
//  Light.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "Light.h"
#import "SerialObject.h"
#import  <objc/runtime.h>

@implementation Light
- (void)lightOn {
    NSLog(@"灯被打开");
}
- (void)lightOff {
    NSLog(@"灯被关闭");
}

SERIALIZE_CODER_DECODER()
@end
