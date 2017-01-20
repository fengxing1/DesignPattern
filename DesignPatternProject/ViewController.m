//
//  ViewController.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/12.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "ViewController.h"
#import "Cpu.h"
#import "Factory.h"
#import "IntelFactory.h"
#import "AMDFactory.h"

#import "SqlServerFactory.h"
#import "AccessorFactory.h"
#import "IUser.h"

#import "CDDriver.h"

#import "HtmlBuiler.h"
#import "XmlBuilder.h"
#import "BulierDirector.h"
#import "SubjectProxy.h"
#import "RemoteControl.h"
#import "RemoteLoader.h"
#import "PriceContext.h"
#import "NationalDayStrategy.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //简单工厂
    Factory *factory = nil;
    factory = [IntelFactory new];
    Cpu *cpu1 = [factory createCpuWithType:117];
    [cpu1 installCpu];
    Cpu *cpu2 = [factory createCpuWithType:753];
    [cpu2 installCpu];
    
    //抽象工厂
    id<IFactory> sqlFactory = [SqlServerFactory new];
    IUser *sqlUser = [sqlFactory createUser];
    [sqlUser insert:@"张三"];
    [sqlUser getUser];
    
    id<IFactory> accessorFactory = [AccessorFactory new];
    IUser *accessorUser = [accessorFactory createUser];
    [accessorUser insert:@"李四"];
    [accessorUser getUser];
    
    //中介者模式
    CDDriver *cdDriver = [CDDriver new];
    [cdDriver readCD];
    
    //生产者模式
    //生成html文件
    HtmlBuiler *htmlBuilder = [[HtmlBuiler alloc] initWithData:@"html 生产者"];
    //生产具体产品的指导者
    BulierDirector *bulierDirector = [[BulierDirector alloc] initWithBuilder:htmlBuilder];
    [bulierDirector constructProduct];
    
    //生成xml文件
    XmlBuilder *xmlBuilder = [[XmlBuilder alloc] initWithData:@"xml 生产者"];
    BulierDirector *xmlDirector = [[BulierDirector alloc] initWithBuilder:xmlBuilder];
    [xmlDirector constructProduct];
    
    //生成proxy
    SubjectProxy *proxy = [[SubjectProxy alloc] initWithRealSubject:[RealSubject new]];
    //获取
    NSLog(@"获取简单对象");
    [proxy getSimpleInfo];
    NSLog(@"获取整体对象");
    [proxy getCompleteInfo];

    //命令模式
//    RemoteControl *remote = [[RemoteControl alloc] init];
//    RemoteLoader *loader = [[RemoteLoader alloc] initWithRemoteControl:remote];
//    [remote onButtonClickWithSlot:0];
//    NSLog(@"----------------------------------------");
//    [remote offButtonClickWithSlot:0];
//    NSLog(@"----------------------------------------");
//    [remote onButtonClickWithSlot:1];
//    NSLog(@"----------------------------------------");
//    [remote offButtonClickWithSlot:1];
//    NSLog(@"----------------------------------------");
    
    NSData *data = [[NSUserDefaults standardUserDefaults]objectForKey:@"serialCommands"];
    NSArray *commands = [NSKeyedUnarchiver unarchiveObjectWithData:data];//反序列化
    for (id<CommandInterface> command in commands) {
        [command execute];
    }
    
 ///#########断点###########
    
    //测试命令
    RemoteControl *remote = [[RemoteControl alloc]init];
    RemoteLoader *loader = [[RemoteLoader alloc] initWithRemoteControl:remote];
    //测试每个按钮的命令
    [remote onButtonClickWithSlot:0];
    [remote offButtonClickWithSlot:0];
    [remote onButtonClickWithSlot:1];
    [remote offButtonClickWithSlot:1];
    //测试宏命令
    [remote onButtonClickWithSlot:2];
    [remote offButtonClickWithSlot:2];
    
    //策略模式
    id<StrategyInterface> strategy = [[NationalDayStrategy alloc] init];
    PriceContext *context = [[PriceContext alloc] initWithStrategy:strategy];
    NSInteger realPrice = [context queryPrice:100];
    NSLog(@"打折之后的价格：%ld",(long)realPrice);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
