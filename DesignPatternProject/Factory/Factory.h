//
//  Factory.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/12.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cpu.h"

@interface Factory : NSObject
- (Cpu *)createCpuWithType:(NSInteger)type;
@end
