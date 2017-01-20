//
//  GumabllMachine.h
//  DesignPatternProject
//
//  糖果机
//  Created by dashuai on 17/1/20.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateInterface.h"

@interface GumabllMachine : NSObject
- (void)setState:(id<StateInterface>) state;

@property (nonatomic, strong) id<StateInterface> state;
@property (nonatomic, strong) id<StateInterface> slodOutState;
@property (nonatomic, strong) id<StateInterface> noQuarterState;
@property (nonatomic, strong) id<StateInterface> hasQuarterState;
@property (nonatomic, strong) id<StateInterface> soldingState;

@property (nonatomic, assign) NSInteger count;

- (instancetype)initWithGumabllCount:(NSInteger)count;
- (void)machineInsertQuarter;
- (void)machineEjectQuarter;
- (void)machinetrunCrank;
- (void)machineDispense;
@end
