//
//  LightOffCommand.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Light.h"
#import "CommandInterface.h"

@interface LightOffCommand : NSObject <CommandInterface>
@property (nonatomic, strong) Light *light;
- (instancetype)initWithLight:(Light *)light;
@end
