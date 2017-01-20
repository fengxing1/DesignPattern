//
//  IFactory.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/16.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class IUser;

@protocol IFactory <NSObject>
@required
- (IUser *)createUser;

@end
