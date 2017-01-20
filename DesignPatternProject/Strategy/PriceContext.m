//
//  PriceContext.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "PriceContext.h"

@implementation PriceContext
- (instancetype)initWithStrategy:(id<StrategyInterface>)strategy {
    self = [super init];
    if (self) {
        self.strategy = strategy;
    }
    return self;
}

- (NSInteger)queryPrice:(NSInteger)price {
    return [self.strategy changePrice:price];
}

@end
