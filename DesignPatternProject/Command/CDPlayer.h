//
//  CDPlayer.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/18.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDPlayer : NSObject
- (void)CDOn;

- (void)CDOff;

- (void)changeVolume:(NSInteger)volume;
@end
