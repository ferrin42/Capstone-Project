//
//  Game.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "Game.h"

@implementation Game

@dynamic gameName;
@dynamic gameCreator;
@dynamic gameTimer;

+ (NSString *)parseClassName
{
    return @"Game";
}

@end
