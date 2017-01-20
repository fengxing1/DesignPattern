//
//  RealSubject.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubjectInterface.h"

@interface RealSubject : NSObject <SubjectInterface>
//真实环境有几十条属性，这里为了方便只展示几条属性
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)NSInteger age;
@property(nonatomic,strong)NSString *sex;
@property(nonatomic,strong)NSString *address;
@property(nonatomic,strong)NSString *country;

@end
