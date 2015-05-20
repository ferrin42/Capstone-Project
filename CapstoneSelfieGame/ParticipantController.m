//
//  ParticipantController.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/19/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "ParticipantController.h"
#import "Game.h"
#import "Participant.h"

@implementation ParticipantController

+ (ParticipantController *)sharedInstance {
    static ParticipantController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ParticipantController alloc] init];
        
    });
    return sharedInstance;
}

- (void)loadParticipants:(void (^)(BOOL success))completion {
 
    PFQuery *query = [Game query];
//    [query this should query the game whose cell was selected
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        NSMutableArray *arrayToPullParticipants = [NSMutableArray new];
        
        for (Game *game in objects) {
            [arrayToPullParticipants addObject:game.gameParticipants];
        }
        
        [ParticipantController sharedInstance].participants = [[NSArray alloc] initWithArray:arrayToPullParticipants];
        completion(YES);
    }];
    
}

@end
