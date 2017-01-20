//
//  SoldingState.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/20.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "SoldingState.h"

@implementation SoldingState

- (instancetype)initWithMachine:(GumabllMachine *)machine {
    self = [super init];
    if (self) {
        self.machine = machine;
    }
    return self;
}


//塞入硬币
- (void)insertQuarter {
    //
}

//拒绝硬币
- (void)ejectQuarter {
    //
}
//转动曲柄
- (void)trunCrank {
    //
}
//售出汤锅
- (void)dispense {
    //
}


@end
