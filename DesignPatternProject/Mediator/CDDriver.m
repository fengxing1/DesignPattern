//
//  CDDriver.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "CDDriver.h"
#import "MainBoard.h"

@implementation CDDriver
- (void)readCD {
    NSMutableString *data = [[NSMutableString alloc] initWithString:@"地球的跳动 2"];
    [[MainBoard shareInstance] handleData:data dataSource:self];
}
@end
