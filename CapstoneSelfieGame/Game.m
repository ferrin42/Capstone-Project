//
//  Game.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "Game.h"
#import <Parse/PFObject+Subclass.h>

@implementation Game

@dynamic gameName;
@dynamic gameCreator;
@dynamic gameTimer;
@dynamic gameParticipants;

+ (NSString *)parseClassName {
    
    return @"Game";
}


+ (void)load {
    
    [self registerSubclass];
}

@end
