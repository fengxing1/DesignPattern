//
//  RemoteLoader.m
//  DesignPatternProject
//
//  Created by dashuai on 17/1/19.
//  Copyright © 2017年 mhc. All rights reserved.
//

#import "RemoteLoader.h"
#import "Light.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "CDPlayer.h"
#import "CDPlayOnCommand.h"
#import "CDPlayOffCommand.h"
#import "macroCommand.h"

@interface RemoteLoader ()
@property(strong,nonatomic)NSArray *completedCommandsArr;
@property (nonatomic, strong) RemoteControl *remoteControl;

@end

@implementation RemoteLoader
- (instancetype)initWithRemoteControl:(RemoteControl *)remoteControl {
    self = [super init];
    if (self) {
        self.remoteControl = remoteControl;
        [self configSlotCommand];
    }
    return self;
}

-(void)configSlotCommand{
    Light *light = [Light new];
    LightOnCommand *lightOn = [[LightOnCommand alloc]initWithLight:light];
    LightOffCommand *LightOff = [[LightOffCommand alloc]initWithLight:light];
    [self.remoteControl setCommandWithSlot:0 onCommand:lightOn offCommand:LightOff];
    
    CDPlayer *player = [CDPlayer new];
    CDPlayOnCommand *playerOn = [[CDPlayOnCommand alloc]initWithPlayer:player];
    CDPlayOffCommand *playerOff = [[CDPlayOffCommand alloc]initWithPlayer:player];
    [self.remoteControl setCommandWithSlot:1 onCommand:playerOn offCommand:playerOff];
    
    NSArray *onCommandArr = [NSArray arrayWithObjects:lightOn,playerOn, nil];
    NSArray *offCommandArr = [NSArray arrayWithObjects:LightOff,playerOff, nil];
    
    macroCommand *onMacro = [[macroCommand alloc]initWithCommands:onCommandArr];
    macroCommand *offMacro = [[macroCommand alloc]initWithCommands:offCommandArr];
    [self.remoteControl setCommandWithSlot:2 onCommand:onMacro offCommand:offMacro];
    
    
    //序列化命令对象，然后保存
    self.completedCommandsArr = @[lightOn,LightOff,playerOn,playerOff,onMacro,offMacro];
    NSData  *data1 = [NSKeyedArchiver archivedDataWithRootObject:self.completedCommandsArr];
    [[NSUserDefaults standardUserDefaults]setObject:data1 forKey:@"serialCommands"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

@end
