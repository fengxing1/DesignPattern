//
//  SubjectInterface.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubjectInterface <NSObject>
- (NSString *)getName;
- (NSInteger)getAge;
- (NSString *)getSex;
- (NSString *)getAddress;
- (NSString *)getCountry;

@optional
//首次加载获取简单信息：name和sex
-(void)getSimpleInfo;
//当用户点击了某个人，去数据库获取该人的全部信息
-(void)getCompleteInfo;


@end
