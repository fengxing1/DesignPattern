//
//  bulierDirector.h
//  DesignPatternProject
//  用来生成文档的算法
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuilderInterface.h"

@interface BulierDirector : NSObject
@property (nonatomic, strong) id<BuilderInterface> builder;
- (instancetype)initWithBuilder:(id<BuilderInterface>)builder;
- (NSString *)constructProduct;

@end
