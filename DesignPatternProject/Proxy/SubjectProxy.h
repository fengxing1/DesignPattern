//
//  SubjectProxy.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubjectInterface.h"
#import "RealSubject.h"

@interface SubjectProxy : NSObject <SubjectInterface>
@property(strong,nonatomic) RealSubject *realSubject;
@property(assign,nonatomic)BOOL isReload;

- (instancetype)initWithRealSubject:(RealSubject *)subject;

@end
