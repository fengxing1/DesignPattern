//
//  CDPlayOnCommand.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDPlayer.h"
#import "CommandInterface.h"

@interface CDPlayOnCommand : NSObject <CommandInterface>
@property (nonatomic, strong) CDPlayer *cdPalyer;
- (instancetype)initWithPlayer:(CDPlayer *)player;

@end
