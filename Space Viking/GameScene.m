//
//  GameScene.m
//  Space Viking
//
//  Created by Stranzenbach Ralf on 07.10.11.
//  Copyright (c) 2011 BearingPoint GmbH. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

- (id)init {
    self = [super init];
    if (self) {
        BackgroundLayer *backgroundLayer = [BackgroundLayer node];
        [self addChild:backgroundLayer z:0];
        GameplayLayer *gameplayLayer = [GameplayLayer node];
        [self addChild:gameplayLayer z:5];
        
    }
    return self;
}

@end
