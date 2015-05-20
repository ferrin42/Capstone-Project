//
//  ParticipantController.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/19/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "ParticipantController.h"

@implementation ParticipantController

+ (ParticipantController *)sharedInstance {
    static ParticipantController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ParticipantController alloc] init];
        
    });
    return sharedInstance;
}

@end
