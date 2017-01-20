//
//  PriceContext.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NationalDayStrategy.h"

@interface PriceContext : NSObject
@property (nonatomic, strong) id<StrategyInterface> strategy;
- (instancetype)initWithStrategy:(id<StrategyInterface>)strategy;

- (NSInteger)queryPrice:(NSInteger)price;

@end
