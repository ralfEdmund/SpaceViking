//
//  BackgroundLayer.m
//  Space Viking
//
//  Created by Stranzenbach Ralf on 06.10.11.
//  Copyright (c) 2011 BearingPoint GmbH. All rights reserved.
//

#import "BackgroundLayer.h"

@implementation BackgroundLayer

-(id)init {
    self = [super init];
    if (self != nil) {
        CCSprite *backgroundImage;
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            backgroundImage = [CCSprite spriteWithFile:@"background.png"];
        } else {
            backgroundImage = [CCSprite spriteWithFile:@"backgroundiPhone.png"];
        }
    
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        [backgroundImage setPosition:ccp(screenSize.width/2, screenSize.height/2)];
        [self addChild:backgroundImage z:0 tag:0];
    }
    return self;
}

@end
