//
//  NoQuarterState.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/20.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateInterface.h"
#import "GumabllMachine.h"

@interface NoQuarterState : NSObject <StateInterface>
@property (nonatomic, strong) GumabllMachine *machine;

- (instancetype)initWithMachine:(GumabllMachine *)machine;


@end
