//
//  bulierDirector.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "BulierDirector.h"

@implementation BulierDirector
- (instancetype)initWithBuilder:(id<BuilderInterface>)builder {
    self = [super init];
    if (self) {
        self.builder = builder;
    }
    return self;
}

- (NSString *)constructProduct {
    [self.builder buildHeader];
    [self.builder buildBody];
    [self.builder buildFooter];
    return [self.builder getProduct];
}

@end
