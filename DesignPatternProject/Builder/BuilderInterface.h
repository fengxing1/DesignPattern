//
//  BuilderInterface.h
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BuilderInterface <NSObject>
- (void)buildHeader;
- (void)buildBody;
- (void)buildFooter;
- (NSString *)getProduct;

@end
