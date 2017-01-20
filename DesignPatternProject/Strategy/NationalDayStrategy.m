//
//  NationalDayStrategy.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "NationalDayStrategy.h"

@implementation NationalDayStrategy
- (NSInteger)changePrice:(NSInteger)goodsPrice {
    return goodsPrice * 0.9;
}

@end
