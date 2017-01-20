//
//  LightOnCommand.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"
#import "Light.h"

@interface LightOnCommand : NSObject <CommandInterface>
@property(strong,nonatomic)Light *light;
- (instancetype)initWithLight:(Light *)light; 
@end
