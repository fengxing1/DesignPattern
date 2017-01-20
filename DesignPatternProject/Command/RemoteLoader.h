//
//  RemoteLoader.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RemoteControl.h"

@interface RemoteLoader : NSObject

- (instancetype)initWithRemoteControl:(RemoteControl *)remoteControl;

@end
