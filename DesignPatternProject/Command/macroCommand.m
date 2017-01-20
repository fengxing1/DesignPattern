//
//  macroCommand.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "macroCommand.h"
#import "SerialObject.h"
#import  <objc/runtime.h>

@implementation macroCommand

- (instancetype)initWithCommands:(NSArray<id<CommandInterface>>*)commands
{
    self = [super init];
    if (self) {
        self.commandsArr = commands;
    }
    return self;
}

-(void)execute{
    for (id<CommandInterface>command in self.commandsArr) {
        [command execute];
    }
}

SERIALIZE_CODER_DECODER()

@end
