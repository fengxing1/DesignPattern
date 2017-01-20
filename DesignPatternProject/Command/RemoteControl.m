//
//  RemoteControl.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "RemoteControl.h"
#import "NoCommand.h"

@interface RemoteControl ()
@property (nonatomic, strong) NSMutableArray<id<CommandInterface>> *onCommandArray;
@property (nonatomic, strong) NSMutableArray<id<CommandInterface>> *offCommandArray;
@end

@implementation RemoteControl

- (instancetype)init {
    self = [super init];
    if (self) {
        self.onCommandArray = [NSMutableArray array];
        self.offCommandArray = [NSMutableArray array];
        id<CommandInterface>noCommands = [[NoCommand alloc] init];
        for (int i = 0; i < 4; i ++) {
            [self.onCommandArray addObject:noCommands];
            [self.offCommandArray addObject:noCommands];
        }
    }
    return self;
}

- (void)onButtonClickWithSlot:(NSInteger)slot {
    [self.onCommandArray[slot] execute];
    
}
- (void)offButtonClickWithSlot:(NSInteger)slot {
    [self.offCommandArray[slot] execute];
}
- (void)setCommandWithSlot:(NSInteger)slot onCommand:(id<CommandInterface>)onCommand offCommand:(id<CommandInterface>)offCommand {
    self.onCommandArray[slot] = onCommand;
    self.offCommandArray[slot] = offCommand;
}

@end
