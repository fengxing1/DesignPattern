//
//  MainBoard.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainBoard : NSObject
+ (instancetype)shareInstance;
- (void)handleData:(NSMutableString *)data dataSource:(id)source;

@end
