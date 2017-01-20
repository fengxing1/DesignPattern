//
//  CDPlayOffCommand.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"
#import "CDPlayer.h"

@interface CDPlayOffCommand : NSObject <CommandInterface>
@property (nonatomic, strong) CDPlayer *player;
- (instancetype)initWithPlayer:(CDPlayer *)player;

@end
