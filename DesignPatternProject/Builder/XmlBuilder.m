//
//  XmlBuilder.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/17.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "XmlBuilder.h"

@implementation XmlBuilder
- (instancetype)initWithData:(NSString *)data {
    self = [super init];
    if (self) {
        self.data = [[NSMutableString alloc] initWithString:data];
    }
    return self;
}

- (void)buildHeader {
    [self.data insertString:@"\n<xml.headr>\n<body>\n" atIndex:0];
}

- (void)buildBody {
     [self.data appendString:@"\n<\\body>\n"];
}

- (void)buildFooter {
    [self.data appendString:@"<xml.footer>"];
}

- (NSString *)getProduct {
    NSLog(@"生成的html文件 %@",self.data);
    return self.data;
}



@end
