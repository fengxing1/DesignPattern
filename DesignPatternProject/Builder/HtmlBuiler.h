//
//  HtmlBuiler.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuilderInterface.h"

@interface HtmlBuiler : NSObject <BuilderInterface>
@property (nonatomic, strong) NSMutableString *data;
- (instancetype)initWithData:(NSString *)data;

@end
