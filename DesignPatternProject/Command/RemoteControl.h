//
//  RemoteControl.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"

@interface RemoteControl : NSObject
@property (nonatomic, strong) id<CommandInterface> slot;
- (void)onButtonClickWithSlot:(NSInteger)slot;
- (void)offButtonClickWithSlot:(NSInteger)slot;
- (void)setCommandWithSlot:(NSInteger)slot onCommand:(id<CommandInterface>)onCommand offCommand:(id<CommandInterface>)offCommand;
@end
