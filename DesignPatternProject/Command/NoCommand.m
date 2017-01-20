//
//  NoCommand.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "NoCommand.h"
#import "SerialObject.h"
#import  <objc/runtime.h>


@implementation NoCommand

- (void)execute {
    NSLog(@"插槽上没有响应的按钮 。。。。。");
}

SERIALIZE_CODER_DECODER()

@end
