//
//  GameplayLayer.m
//  Space Viking
//
//  Created by Stranzenbach Ralf on 07.10.11.
//  Copyright (c) 2011 BearingPoint GmbH. All rights reserved.
//

#import "GameplayLayer.h"

@implementation GameplayLayer

- (id)init {
    self = [super init];
    if (self) {
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        self.isTouchEnabled = YES;
        vikingSprite = [CCSprite spriteWithFile:@"sv_anim_1.png"];
        [vikingSprite setPosition:ccp(screenSize.width/2, screenSize.height*0.17f)];
        [self addChild:vikingSprite];
        if (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
            [vikingSprite setScaleX:screenSize.width/1024.0f];
            [vikingSprite setScaleY:screenSize.height/768.0f];
        }
    }
    return self;
}

@end
