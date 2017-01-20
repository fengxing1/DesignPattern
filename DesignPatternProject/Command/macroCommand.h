//
//  macroCommand.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"

@interface macroCommand : NSObject<CommandInterface>
@property(strong,nonatomic)NSArray<id<CommandInterface>> *commandsArr;
- (instancetype)initWithCommands:(NSArray<id<CommandInterface>>*)commands;

@end
