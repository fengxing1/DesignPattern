//
//  GumabllMachine.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/20.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "GumabllMachine.h"
#import "NoQuarterState.h"
#import "HasQUarterState.h"
#import "SoldingState.h"
#import "SoldOutState.h"

@implementation GumabllMachine
- (instancetype)initWithGumabllCount:(NSInteger)count {
    self = [super init];
    if (self) {
        self.count = count;
        self.noQuarterState = [[NoQuarterState alloc] initWithMachine:self];
        self.hasQuarterState = [[HasQUarterState alloc] initWithMachine:self];
        self.soldingState = [[SoldingState alloc] initWithMachine:self];
        self.slodOutState = [[SoldOutState alloc] initWithMachine:self];
        if (count > 0) {
            self.state = self.noQuarterState;
        }
    }
    return self;
}
- (void)machineInsertQuarter {
    [self.state insertQuarter];
    
}
- (void)machineEjectQuarter {
    [self.state ejectQuarter];
    
}
- (void)machinetrunCrank {
    [self.state trunCrank];
}
- (void)machineDispense {
    [self.state dispense];
}
@end
