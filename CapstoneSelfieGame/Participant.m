//
//  Participant.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/19/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "Participant.h"

@implementation Participant

@dynamic participantGame;
@dynamic participantPhoto;
@dynamic participantUser;

+ (NSString *)parseClassName {
    return @"Participant";
}

+ (void)load {
    [self registerSubclass];
}

@end
