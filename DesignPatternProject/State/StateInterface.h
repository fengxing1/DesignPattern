//
//  StateInterface.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/20.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StateInterface <NSObject>
@required
//投入
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)trunCrank;
- (void)dispense;

@end
